hi terminal ctermfg=197 ctermbg=NONE

hi logInfo      ctermfg=97 ctermbg=0
hi logAudit     ctermfg=4 ctermbg=0
hi logWarning   ctermfg=5 ctermbg=0
hi logLine      ctermfg=3 ctermbg=0
hi logError     ctermfg=1 ctermbg=0
hi logHibernate ctermfg=2 ctermbg=0

syntax match terminal /^.*@.*:.*>/
syntax match logError     /^\sat\s.*$/
syntax match logInfo      /^\[INFO\s\+\].*$/
syntax match logAudit     /^\[AUDIT\s\+\].*$/
syntax match logWarning   /^\[WARNING\s\+\].*$/
syntax match logError     /^\[ERROR\s\+\].*$/
syntax match logError     /^\[err\].*$/
syntax match Error        /exception/
syntax match logHibernate /^Hibernate: .*$/
