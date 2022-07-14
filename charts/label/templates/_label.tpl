{{- define "label.labels" -}}
helm.sh/chart: {{ include "label.chart" . }}
{{ include "label.selectorLabels" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "label.selectorLabels" -}}
app.kubernetes.io/name: {{ include "label.fullname" . }}
project: {{ required "Project not defined !!!" .Values.project | quote }}
env: {{ required "Environment not defined !!!" .Values.environment | quote }}
squad: {{ required "squad not defined !!!" .Values.squad | quote }}
{{- end }}