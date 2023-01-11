all: pdf docx

pdf: sb_guidance.pdf

docx: sb_guidance.docx

clean:
	rm -f sb_guidance.pdf sb_guidance.docx

sb_guidance.docx: sb_guidance.md
	pandoc $< -o $@ --reference-doc reference.docx

sb_guidance.pdf: sb_guidance.md
	pandoc $< -o $@
