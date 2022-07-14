{{/*
Mandatory metadata labels
*/}}
{{- define "nginx-ingress.mandatoryMetadataLabels" -}}
app: {{ .Values.name | quote }}
service: {{ .Values.service | quote }}
project: {{ .Values.project | quote }}
cluster: {{ required "Cluster not defined !!!" .Values.cluster | quote }}
env: {{ required "Environment not defined !!!" .Values.environment | quote }}
squad: {{ .Values.squad | quote }}
tribe: {{ .Values.tribe | quote }}
{{- end -}}