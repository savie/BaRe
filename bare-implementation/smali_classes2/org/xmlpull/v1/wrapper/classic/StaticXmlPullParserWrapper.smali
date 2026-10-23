.class public Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;
.super Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lorg/xmlpull/v1/util/XmlPullUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/xmlpull/v1/util/XmlPullUtil;->getPIData(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/xmlpull/v1/util/XmlPullUtil;->getPITarget(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getRequiredAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0, p1}, Lorg/xmlpull/v1/util/XmlPullUtil;->getRequiredAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public getRequiredAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0, p1, p2}, Lorg/xmlpull/v1/util/XmlPullUtil;->getRequiredAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRequiredElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->nextStartTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->isNil()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->nextEndTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 18
    .line 19
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    invoke-interface {p0, v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 31
    .line 32
    const-string p1, "name for element can not be null"

    .line 33
    .line 34
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0
.end method

.method public isNil()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    .line 4
    .line 5
    const-string v1, "nil"

    .line 6
    .line 7
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "true"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public matches(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lorg/xmlpull/v1/util/XmlPullUtil;->matches(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public nextEndTag()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0}, Lorg/xmlpull/v1/util/XmlPullUtil;->nextEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public nextEndTag(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0, p1}, Lorg/xmlpull/v1/util/XmlPullUtil;->nextEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public nextEndTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {p0, p1, p2}, Lorg/xmlpull/v1/util/XmlPullUtil;->nextEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nextStartTag()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuffer;

    .line 14
    .line 15
    const-string v2, "expected START_TAG and not "

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 21
    .line 22
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public nextStartTag(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 38
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nextStartTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 40
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v0, 0x2

    invoke-interface {p0, v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nextText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Lorg/xmlpull/v1/util/XmlPullUtil;->nextText(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public readDouble()D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 8
    .line 9
    .line 10
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-wide v0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    const-string v2, "INF"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_4

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "infinity"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string v2, "-INF"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "-infinity"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string v2, "NaN"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuffer;

    .line 69
    .line 70
    const-string v4, "can\'t parse double value \'"

    .line 71
    .line 72
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    const-string v0, "\'"

    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {v2, v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw v2

    .line 91
    :cond_3
    :goto_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    :goto_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 95
    .line 96
    :goto_2
    return-wide v0
.end method

.method public readDoubleElement(Ljava/lang/String;Ljava/lang/String;)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->readDouble()D

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method public readFloat()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception v1

    .line 13
    const-string v2, "INF"

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_4

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "infinity"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const-string v2, "-INF"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "-infinity"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string v2, "NaN"

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    .line 67
    .line 68
    new-instance v3, Ljava/lang/StringBuffer;

    .line 69
    .line 70
    const-string v4, "can\'t parse float value \'"

    .line 71
    .line 72
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    const-string v0, "\'"

    .line 79
    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-direct {v2, v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 88
    .line 89
    .line 90
    throw v2

    .line 91
    :cond_3
    :goto_0
    const/high16 p0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    :goto_1
    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 95
    .line 96
    :goto_2
    return p0
.end method

.method public readFloatElement(Ljava/lang/String;Ljava/lang/String;)F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->readFloat()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return p0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 14
    .line 15
    const-string v2, "can\'t parse int value"

    .line 16
    .line 17
    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    throw v1
.end method

.method public readIntElement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public readString()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public readStringElemet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlPullParserWrapper;->readString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public skipSubTree()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-static {p0}, Lorg/xmlpull/v1/util/XmlPullUtil;->skipSubTree(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
