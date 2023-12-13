FROM python:3.12

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Provést migrace
RUN python manage.py migrate

# Spustit vývojový server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
