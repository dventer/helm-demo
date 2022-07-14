{{/*
Mandatory metadata labels
*/}}
{{- define "namespace-rbac.mandatoryMetadataLabels" -}}
project: {{ .Values.project | quote }}
env: {{ required "Environment not defined !!!" .Values.environment | quote }}
squad: {{ .Values.squad | quote }}
{{- end -}}