# Enterprise RAG Platform on AWS

A production-ready Retrieval-Augmented Generation (RAG) platform built using modern cloud-native engineering practices.

This project focuses on designing, implementing, and operating a highly secure, scalable, and observable AI platform capable of ingesting millions of enterprise documents while enforcing fine-grained authorization and delivering low-latency retrieval.

The primary objective is to learn and implement production-grade AWS architecture, infrastructure as code, DevSecOps, and enterprise AI engineering.

---

# Project Goals

✔ Enterprise Architecture <br>
✔ Infrastructure as Code <br>
✔ Secure by Design <br>
✔ Event Driven <br>
✔ Highly Scalable <br>
✔ Observable <br>
✔ Production Ready <br>
✔ Cost Optimized <br>
✔ AI Native <br>

---

# Technology Stack

Cloud <br>
───── <br>
AWS

Language <br>
──────── <br>
Python 3.12

Package Manager <br>
─────────────── <br>
uv

Infrastructure <br>
────────────── <br>
Terraform

CI/CD <br>
───── <br>
GitHub Actions

Container <br>
───────── <br>
Docker

API <br>
─── <br>
API Gateway

Compute <br>
─────── <br>
AWS Lambda

Storage <br>
─────── <br>
Amazon S3

Metadata <br>
──────── <br>
DynamoDB

Messaging <br>
───────── <br>
Amazon SQS

Authentication <br>
────────────── <br>
Amazon Cognito

Secrets <br>
─────── <br>
Secrets Manager

Monitoring <br>
────────── <br>
CloudWatch
X-Ray

Vector Database <br>
─────────────── <br>
OpenSearch Serverless

---

# High-Level Architecture

                    Client
                       │
                 API Gateway
                       │
                  Lambda API
                       │
              Upload Validation
                       │
                    Amazon S3
                       │
                    Amazon SQS
                       │
              Ingestion Worker
                       │
     Parse → Chunk → Embed → Index
                       │
              OpenSearch Vector DB
                       │
               Retrieval Service
                       │
                     Amazon Bedrock
                       │
                    LLM Response
