@echo off
REM Start Hugo dev server with live reload
REM Open http://localhost:1313 in your browser
echo Starting Pack 300 site at http://localhost:1313
hugo server --disableFastRender --buildDrafts
