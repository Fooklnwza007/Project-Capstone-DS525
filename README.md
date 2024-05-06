# Project Summary

# Data model

# Instruction

1. สร้าง Folder Capstone แล้วเข้าไปยัง Working directory Capstone
```sh

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
![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/3708a370-d2e5-4dc7-b730-65f2fec17409)

15. สร้าง project profile dbt ที่สร้างด้วย google bigqeury มีรายละเอียดดังนี้ (ตัวอย่างคือ projectcapstone1 ใช้งานบน projectcapstone)
```sh
dbt init
```
![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/a406dae5-1980-49d8-8ac3-411b13e8856f)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/4fcc01d9-4659-49ce-90e5-c509c7869cf5)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/1fa9fcb6-56ca-406d-85d9-4728b1a2f25b)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/8f7f4372-c0da-4f3a-bb91-b8e52938fd9e)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/a0b9e68b-92e3-4f7d-8ef2-f0159e535c4e)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/0b8203b2-90b2-4e8d-8a78-5c4b5a7684e1)


16. สร้างไฟล์ profiles.yml บน projectcapstone folder และนำข้อมูลจาก code มาใส่ข้อมูลในไฟล์ profiles.yml ที่สร้างไว้
```sh
code /home/codespace/.dbt/profiles.yml
```
![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/1343918a-5a6c-4b7d-bd93-da527e5865e8)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/e07dd996-d21a-44f2-a395-29f3e446738a)

17. เข้า Directory ที่ต้องการทำงานที่ได้มีการสร้าง profiles
```sh
cd projectcapstone
```
![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/f1a5191b-6bf8-4734-befb-52e56c79f591)

18. สร้าง Files ใน Folder Capstone-project/projectcapstone/models _src.yml เพื่อเป็นข้อมูลอ้างอิงในการ Transform ข้อมูลด้วย DBT
    การอ่านข้อมูลของ DBT จะไม่สนโครงสร้างของ Folder

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/5931f8e0-c803-4e26-a9e4-c54cdf1348d9)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/e1bd3c13-008b-4036-918a-ce0ce11c0da3)

19. สร้าง datasets dbt_olist บน Google bigquery เพื่อแยกข้อมูล raw tables กับ transform table ออกจากกัน และป้องกันการแก้ไขข้อมูลหลัก

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/17acf9f4-d4b2-4ef8-aee4-ed680bd15d46)

20. ทำการแก้ไข profiles.yml จาก datasets order เป็น datasets dbt_olist เพื่อทำงานบน datasets ที่ต้องการสร้าง transform table

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/52b4499b-f08b-4c29-afa3-e2b3d2be7919)
 
21. ตรวจสอบการเชื่อมต่อ DBT กับ Google Bigquery
```sh
dbt debug
```
![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/c7bcecbb-0066-4f65-815f-e3406c7a6a47)

22. สร้าง .sql เพื่อ Transform ข้อมูล และเลือกคอลัมน์ที่เกี่ยวข้องในการวิเคราะห์จาก table ใน datasets order ที่เป็น raw table โดยสร้าง files ที่ชื่อว่า olist_obt.sql
    ข้อมูลที่นำมาใช้ในการสร้างต้องอยู่ใน _src.yml (ข้อ 18)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/80312282-e60d-4fe6-9328-f2743986fb26)

23. olist.obt.sql จะเป็น table หลัก ของ table ที่ถูก transform ด้วย DBT เพื่อนำมาใช้ในการอ้างอิงให้กับการสร้าง view ที่ต้องการนำมา reuse
    view ที่ถูกสร้างควรจะอ้างอิง table หลักของ DBT (olist_obt) จะใช้ {{ ref('olist_obt') }}

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/4c485a1f-e915-45d5-b0dc-91ab61480efb)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/6488ac0e-3032-452d-b4ce-35729165fc21)

24. สร้างไฟล์ schema.yml เพื่อใช้ในการเช็คเงื่อนไขการสร้าง tables/views ตัวอย่างคือ การเช็คเงื่อนไขคอลัมน์ order_id ต้องไม่มีค่าว่าง (not null)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/afb98402-27c6-40a4-a96d-8a97d9922e85)

25. ตรวจสอบเงื่อนไขการสร้าง tables/views สอดคล้องกับเงื่อนไขที่ตั้งไว้หรือไม่
```sh
dbt test
```
![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/19276eed-9244-4992-bf61-9a6eee5c5ff3)

26. สร้าง tables/views ตามไฟล์ .sql และตามเงื่อนไขที่ schema.yml โดยไฟล์ทั้งหมดจะต้องอยู่ใน projectcapstone/models/
    การอ่านไฟล์ .sql ของ DBT จะอ่านเฉพาะที่อยู่ directory projectcapstone/models/ โดยไม่สนการเรียงลำดับของ folder
```sh
dbt run
```

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/9ff0a242-2d26-4afe-b753-193610c51ac8)

![image](https://github.com/Fooklnwza007/Project-Capstone-DS525/assets/131597296/381ef4bd-c75e-477d-a1aa-4fd9a3bee009)



 
