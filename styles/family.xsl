<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8" indent="yes"/>
    <xsl:strip-space elements="*" />

    <xsl:template match="/">
        <xsl:result-document href="family.html" validation="strip">
            <html xml:lang="en" lang="en">
                <head>
                    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
                    <title>
                        <xsl:value-of select="//me/@name"/>
                    </title>
                </head>
                <body style="font-family:sans-serif;">
                    <xsl:apply-templates/>
                </body>
            </html>
        </xsl:result-document>
    </xsl:template>
    
    <!-- 
    Дополнить темплейт так, чтобы получился полноценный рассказ.
    Необходимо использовать все элементы и их атрибуты в рассказе.
    Указать количество братьев, сестёр и детей.
    Указать количество родственников (исключая себя) с разными титулами.
    При изменении @name в темплейте должен получаться рассказ уже от имени другого человека.
    Бонусное задание: построить список наследников престола. 
    (только мужчины, от самого старого к самому молодому) 
    -->
    <xsl:template match="person[@name = 'William Arthur Philip Louis']">
        <p>
            <xsl:text>My name is </xsl:text>
            <xsl:value-of select="@name"/>
            <xsl:text>. I'm </xsl:text>
            <xsl:value-of select="@age"/>
            <xsl:text> years old and I'm a </xsl:text>
            <xsl:value-of select="@title"/>
            <xsl:text>.</xsl:text>
        </p>
        
        <p>
            <xsl:text>I have </xsl:text>
            <xsl:text> (a) brother(s) and </xsl:text>
            <xsl:text> (a) sister(s). They are </xsl:text>
        </p>
    </xsl:template>
</xsl:stylesheet>
