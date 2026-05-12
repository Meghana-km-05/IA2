FROM python:3.11-slim
WORKDIR/app
COPY requirenments.txt .
RUN pip install --no-cache-dir -r requirenments.txt 
COPY app.py .
EXPOSE 5000
CMD ["Python","app.py"]

