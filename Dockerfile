FROM python:3.10-bookworm
WORKDIR /AzureTestProject
COPY app.py requirements.txt ./
RUN pip install -r requirements.txt
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]