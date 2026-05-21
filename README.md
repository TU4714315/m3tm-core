# M3TM Intelligence Automation Core

نواة تشغيل احترافية لبناء منصة رصد وتحليل أخبار متعددة اللغات باستخدام n8n وGroq وTelegram وRSSHub.

## الهدف

بناء MVP عملي وسريع قابل للتوسع:

```text
RSS / APIs / Public Sources
↓
n8n Orchestrator
↓
AI Classification via Groq/OpenAI
↓
Storage / Logs
↓
Telegram Alerts
```

## المكونات

- n8n: محرك الأتمتة والتدفقات.
- Groq/OpenAI: تحليل وتصنيف النصوص.
- Telegram Bot: التنبيهات الفورية.
- RSSHub: تحويل المصادر إلى RSS.
- PostgreSQL: تخزين لاحق للنتائج.
- Qdrant: بحث دلالي لاحق.

## التشغيل السريع

1. انسخ `.env.example` إلى `.env`.
2. ضع مفاتيح API.
3. شغل Docker Compose.
4. افتح n8n.
5. استورد Workflow من `workflows/`.

## ملاحظة تشغيلية

هذا المشروع مصمم للمصادر العامة والقانونية فقط. لا يستخدم تجاوز حماية، لا اختراق، لا جمع بيانات خاصة، ولا تعقب أفراد خارج نطاق مصرح.
