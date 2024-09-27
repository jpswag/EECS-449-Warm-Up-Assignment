curl -X POST http://localhost:8000/walker/interact \
     -H "Authorization: Bearer $1" \
     -H "Content-Type: application/json" \
     -d '{"message": "I am having major back pain, what can i do", "session_id": "123"}'
