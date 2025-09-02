import json
import boto3
import os

def lambda_handler(event, context):
    translate = boto3.client('translate')
    s3 = boto3.client('s3')
    
    for record in event['Records']:
        bucket = record['s3']['bucket']['name']
        key = record['s3']['object']['key']
        
        # Get the object from S3
        response = s3.get_object(Bucket=bucket, Key=key)
        text = response['Body'].read().decode('utf-8')
        
        # Translate the text
        translated_text = translate.translate_text(
            Text=text,
            SourceLanguageCode='en',
            TargetLanguageCode='es'  # Change to desired target language
        )['TranslatedText']
        
        # Save the translated text back to the response bucket
        response_bucket = os.environ['RESPONSE_BUCKET']
        response_key = f'translated-{key}'
        
        s3.put_object(Bucket=response_bucket, Key=response_key, Body=translated_text)
        
    return {
        'statusCode': 200,
        'body': json.dumps('Translation completed successfully!')
    }