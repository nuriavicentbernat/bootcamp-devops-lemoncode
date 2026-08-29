FROM python:3.10.21-slim-trixie

RUN groupadd -r no-root && useradd -r -g no-root no-root

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

USER no-root

EXPOSE 3000

CMD ["python", "app.py"]