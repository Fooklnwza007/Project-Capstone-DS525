# Project Summary

# Data model

# Instruction

1. สร้าง Folder Capstone แล้วเข้าไปยัง Working directory Capstone
```shะ
cd Capstone-project
```

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/32f250cb-ef95-4bf9-a624-bd3eff62672f)


2. สร้าง Environment ในการสร้าง project python สำหรับ project capstone นี้
```sh
python -m venv ENV
```
![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/e7b0920e-b183-4361-82d4-66bad342ea26)


3. Activate เพื่อเข้าไปใน ENV เพื่อเก็บ package ที่จำเป็น
```sh
source ENV/bin/activate
```

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/0fc4f55c-15bc-4744-957b-e90ed52309d4)


4. ในขณะที่อยู่ใน ENV เปิดใช้งาน Apache airflow port 8080
```sh
docker compose up
```

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/cd81d55f-f7e6-49ab-819f-b9fecdfb9745)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/64b97e5e-f3c9-413d-9380-7d438385890a)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/5511aa83-cf24-45a3-a842-1c6bd7da1cfe)


5. สร้าง Project และ key สำหรับ Capstone project บน Google cloud เปิดสิทธิ์ให้สามารถเชื่อมต่อได้ทั้ง Google Cloud Storage (GCS) และ Google Bigquery

5.1 สร้าง Project และ Key บน Google Cloud

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/6c91c915-216c-4210-b9b1-9b97fe658ad2)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/1b1ca787-ecac-4664-96da-d96ef6c39a80)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/0c144db0-277a-4d5f-be6e-290ec9ef1d1a)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/5e42150e-d2cd-487f-860f-d1d2ceeb24b3)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/ee7e9f64-1fff-44cb-a40d-374156f1d048)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/f71ac83d-f674-49bd-a3cb-54cd67ad545b)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/c6b86887-0c6f-4823-b954-577d696a8c08)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/6465203f-d2e6-4c6c-88cb-0b14d317d1b3)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/e11696e8-19a0-4179-a077-88613ab5b4e1)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/d5ac1c3c-6403-4880-8aca-7d4406a68850)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/bbae9f90-6f20-4f88-b9bd-f0da62b2ea28)

5.2 นำไฟล์ JSON มาเก็บไว้ใน Folder ใน code space (ห้ามนำขึ้น Git ให้สร้าง .gitignore) เพื่อนำไปเชื่อมต่อกับ Airflow

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/c49453b1-281a-4740-a17e-f48a73799cbd)

 5.2.1 การสร้าง .gitignore ให้ใส่ชื่อ Folder หรือชื่อไฟล์ ที่ไม่ต้องการให้ขึ้น git จากตัวอย่างไฟล์บน Folder key จะไม่ถูกนำขึ้น git ชื่อ Folder และ ไฟล์ จะแสดงเป็นสีเทาเข้ม

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/e1d471b6-464c-40f6-9a7a-8259a52e4c51)


6. สร้าง Bucket บน Google Cloud Storage ประกอบด้วย 2 Bucket เพื่อใช้ในการเก็บข้อมูล คือ 1. raw_data_projectcapstone (ใช้ในการเก็บ raw data ไม่ต้องการให้ใครมาเปลี่ยน)
2. storage-capstone

(ตัวอย่าง Bucket ชื่อ example_ds525_123)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/c3514887-86f7-4825-a4b7-3e10d60db276)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/d987367d-96fe-44dc-9737-3b37aabea7e1)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/53775cc6-0e80-46d2-8837-5273e3d8c211)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/15b5be3c-21e3-4e93-add5-4e5e54070e2c)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/56e7b81f-9b41-4bf9-80a7-c74d584541b1)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/34d527a2-b445-4825-9fb7-46727bb7e1ab)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/4bd9bfd7-32c8-469d-bfa8-5c2602bd8e0c)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/406ee3ba-fa5a-4520-b3a5-5c72133b648d)

7. เชื่อมต่อ airflow เข้ากับ Google Cloud โดยการใช้ key ที่เราได้มีการเก็บไว้บน code space

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/3c291331-989f-493a-81f3-162ea5d673dc)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/bf82477d-e940-4311-b8d6-405bca226412)


![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/0c777d6e-9308-4568-908b-c87a694b1ca6)


9. การทำ Automated pipeline ด้วย Airflow จะเขียนบน python ไฟล์ etl.py โดยมี Loop ดังนี้

GCS (raw_data_projectcapstone) >> GCS (storage-capstone) >> Google Bigquery

สร้าง DAG เพื่อสร้าง Loop การทำงานบน airflow โดยมีชื่อว่า etl (Dummy Operator จะมีหรือไม่มีก็ได้) สามารถค้นหาบน airflow ได้ด้วย tag = swu

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/3bd6055a-dd64-48a5-b67d-301cadb9886a)


![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/301ab360-04c1-436c-a55c-c4a4cc3079d4)

9. สร้าง GCSToGCSOperator เพื่อนำข้อมูลจาก GCS Bucket : raw_data_projectcapstone ที่ทำการ manual ใส่ไฟล์ CSV เข้าสู่ Bucket : storage-capstone
ข้อมูลทั้ง 2 Bucket ต้องมีไฟล์ csv ที่เหมือนกัน

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/a1e910e3-5308-4ae5-ba51-2c37787acedc)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/eb7cecad-7565-472d-a8db-8b3f21b17b1b)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/4da4e8e3-c5b8-4c8c-ac88-17b52ea955bc)

10. สร้าง datasets : order บน Google Bigquery (BigQueryCreateEmptyDatasetOperator) เพื่อเตรียมในการนำข้อมูลจาก GCS เข้า Google Bigquery

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/9d519db6-bd95-4d50-b890-450573b911d3)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/89e188d4-1cb0-41ba-92c8-3f03d10018c8)

11. นำข้อมูลจาก GCS : storage-capstone เข้าสู่ Google Bigquery (GCSToBigQueryOperator) จะมีสถานะเป็น tables

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/b4313b81-ce1c-43d0-aa73-e18667c250f1)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/02f863b9-ee65-4694-a342-f72e3d7c3451)

12. สร้าง Partition table เพื่อให้ข้อมูลสามารถ Query ได้เร็วขึ้น ประกอบด้วย partitioned_olist_items_dataset และ partitioned_olist_orders_dataset

จะมีสัญลักษณะด้านหน้า table ที่ต่างจาก table ปกติ และมีข้อความ This is a partitioned table.

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/eb661aec-1361-4041-8ada-ea29eebb0ece)


![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/7ad2ddd3-8378-4a09-bafd-ba507adbf732)

13. Transform สร้างตารางใหม่ เพื่อนำไป Transform ตาราง olist_obt ด้วย DBT ในภายหลัง

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/945570e5-c4c3-49ac-9bfb-3b168d482642)

14. Download library dbt-core dbt-bigquery เพื่อให้สามารถใช้งานเครื่องมือ dbt และใช้ dbt ที่เชื่อมต่อกับ bigqueryได้
```sh
pip install dbt-core dbt-bigquery
```
![image](https://github.com/Fooklnwza007/dw-and-bi/assets/131597296/388c3fde-5445-43ef-9e2d-d2aaced07fa5)


8. สร้าง project profile dbt ที่สร้างด้วย google bigqeury มีรายละเอียดดังนี้
```sh
dbt init
```
![image](https://github.com/Fooklnwza007/dw-and-bi/assets/131597296/044f9fea-d1f0-4dc1-adb0-11b21a98a899)



9. หลังจากสร้าง project profile สร้าง file ใน folder projectcapstone/models ด้วยชื่อ profiles.yml
และนำข้อมูลทั้งหมดจาก code ด้านล่าง มาใส่ไว้ใน file profiles.yml ที่เราสร้างใน projectcapstone/models 
```sh
code /home/codespace/.dbt/profiles.yml
```

![image](https://github.com/Fooklnwza007/dw-and-bi/assets/131597296/ba6e6e5d-aee8-4bb7-b315-1f0a352dc7e3)



10. ทดสอบการ connection กับ bigquery
```sh
dbt debug
```
![image](https://github.com/Fooklnwza007/dw-and-bi/assets/131597296/8a704531-70ae-45dc-83c7-76ee141d861d)



11. _src.yml ใช้ในการอ้างอิง source data (ที่อยู่บน google biquery) โครงสร้างประกอบด้วย
project_name = dataengineer-415510, schema = order (datasets), tables = olist_customers_dataset, olist_geolocation_dataset, olist_order_items_dataset, olist_order_payments_dataset, olist_order_reviews_dataset, olist_orders_dataset, olist_products_dataset, olist_sellers_dataset, product_category_name_translation

![image](https://github.com/Fooklnwza007/dw-and-bi/assets/131597296/c1be77e6-ae62-4803-adf7-7b10191014d6)




12. ข้อมูล source tables จะถูกนำมาสร้างเป็น table หลัก เพื่อใช้ในการอ้างอิงในการสร้าง view ตามเงื่อนไขที่ต้องการ และเพื่อป้องกันการเปลี่ยนแปลงของ source tables จาก user 
สามารถกำหนดการสร้าง view หรือ table ได้จาก dbt_project.yml

![image](https://github.com/Fooklnwza007/dw-and-bi/assets/131597296/c7dcc1c5-120f-4d29-9dc6-adf2c1528ae5)

13. การ transform source data ด้วยการใช้ dbt จะอ่านจากไฟล์ .sql ที่อยู่ใน folder models (การทำงานไม่สนโครงสร้างของ folder) และเช็คเงื่อนไขการสร้าง view/tables จากการ transform จากไฟล์ schema.yml

![image](https://github.com/Fooklnwza007/dw-and-bi/assets/131597296/cbdd893b-b77f-4f6d-9456-82d62fcd8720)

![image](https://github.com/Fooklnwza007/dw-and-bi/assets/131597296/000e40b6-b9c8-4f68-8ef1-e7a332ae5cc9)



14. จากนั้นรันคำสั่ง test เพื่อเช็ค data quality เพื่อดูเงื่อนไขการ transform ของ view/table ที่สร้างจากไฟล์ schema.yml โดยเงื่อนไขคือ order_id ของ olist_obt tables และ ทั้ง 3 view ต้องไม่มีค่า NULL
```sh
dbt test
```
![image](https://github.com/Fooklnwza007/dw-and-bi/assets/131597296/3c4e9cf3-0361-468c-90f0-62de6ec7e74e)


![image](https://github.com/Fooklnwza007/dw-and-bi/assets/131597296/3701ac35-855d-450b-a104-a0336c175f8c)


15. ข้อมูลที่ถูก Transform จะถูกนำขึ้น google bigquery โดยมีโครงสร้าง project_name = dataengineer-415510, schema = dbt_olist (datasets), tables = olist_obt (table), view_delivery_performance (view), view_sale_performance (view), view_seller_performance (view)
ข้อมูลที่เป็น view หรือ table ดูได้จากสัญลักษณ์ด้านหน้า

![image](https://github.com/Fooklnwza007/dw-and-bi/assets/131597296/fbe85b65-9176-4189-bc2d-5287d48648fd)


 
