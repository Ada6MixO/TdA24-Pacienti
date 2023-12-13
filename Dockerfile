# Použijte oficiální Python obraz
FROM python:3.12

# Nastavte pracovní adresář
WORKDIR /usr/src/app

# Instalujte závislosti
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Kopírujte zbytek aplikace
COPY . .

# Spusťte server při spuštění kontejneru
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
