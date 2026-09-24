.class public Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;
.super Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;


# static fields
.field private static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xmldecl-standalone"

.field private static final TRACE_SIZING:Z = false


# instance fields
.field protected currentNs:Ljava/lang/String;

.field protected fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

.field protected namespaceDepth:[I

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespaceUri:[Ljava/lang/String;

.field protected wf:Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlSerializer;Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 6
    .line 7
    const/16 p1, 0x8

    .line 8
    .line 9
    new-array p1, p1, [Ljava/lang/String;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    .line 12
    .line 13
    array-length v0, p1

    .line 14
    new-array v0, v0, [Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    .line 17
    .line 18
    array-length p1, p1

    .line 19
    new-array p1, p1, [I

    .line 20
    .line 21
    iput-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceDepth:[I

    .line 22
    .line 23
    iput-object p2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->wf:Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;

    .line 24
    .line 25
    return-void
.end method

.method private ensureNamespacesCapacity()V
    .locals 6

    .line 1
    iget v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    mul-int/lit8 v1, v0, 0x2

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 v1, 0x8

    .line 10
    .line 11
    :goto_0
    new-array v2, v1, [Ljava/lang/String;

    .line 12
    .line 13
    new-array v3, v1, [Ljava/lang/String;

    .line 14
    .line 15
    new-array v1, v1, [I

    .line 16
    .line 17
    iget-object v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    .line 18
    .line 19
    if-eqz v4, :cond_1

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static {v4, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    .line 26
    .line 27
    iget v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 28
    .line 29
    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceDepth:[I

    .line 33
    .line 34
    iget v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 35
    .line 36
    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iput-object v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    .line 40
    .line 41
    iput-object v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    .line 42
    .line 43
    iput-object v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceDepth:[I

    .line 44
    .line 45
    return-void
.end method

.method private writeStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :goto_0
    if-lt v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {p0, v2, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0, v0, v1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-lt v0, v1, :cond_2

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {p0, v1, v2, v3}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    .line 77
    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 79
    .line 80
    goto :goto_2
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;

    move-result-object p0

    return-object p0
.end method

.method public element(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 3
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
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    const-string p3, "nil"

    .line 13
    .line 14
    const-string v1, "true"

    .line 15
    .line 16
    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    .line 17
    .line 18
    invoke-interface {v0, v2, p3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    .line 27
    invoke-interface {p3, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_1
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 32
    .line 33
    const-string p1, "name for element can not be null"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public endTag(Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public escapeAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const/16 p0, 0x3c

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x26

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/16 v3, 0x22

    .line 14
    .line 15
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/16 v5, 0x27

    .line 20
    .line 21
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const/4 v7, -0x1

    .line 26
    if-ne v0, v7, :cond_0

    .line 27
    .line 28
    if-ne v2, v7, :cond_0

    .line 29
    .line 30
    if-ne v4, v7, :cond_0

    .line 31
    .line 32
    if-ne v6, v7, :cond_0

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    add-int/lit8 v2, v2, 0xa

    .line 42
    .line 43
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v4, 0x0

    .line 51
    :goto_0
    if-lt v4, v2, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eq v6, v3, :cond_5

    .line 63
    .line 64
    if-eq v6, p0, :cond_4

    .line 65
    .line 66
    if-eq v6, v1, :cond_3

    .line 67
    .line 68
    if-eq v6, v5, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    const-string v6, "&apos;"

    .line 75
    .line 76
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const-string v6, "&amp;"

    .line 81
    .line 82
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    const-string v6, "&lt;"

    .line 87
    .line 88
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    const-string v6, "&quot;"

    .line 93
    .line 94
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    .line 96
    .line 97
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    goto :goto_0
.end method

.method public escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const/16 p0, 0x3c

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x26

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    add-int/lit8 v5, v5, 0xa

    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    :goto_0
    if-ne v0, v3, :cond_1

    .line 32
    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_1
    if-eq v0, v3, :cond_6

    .line 48
    .line 49
    if-eq v0, v3, :cond_2

    .line 50
    .line 51
    if-eq v2, v3, :cond_2

    .line 52
    .line 53
    if-ge v2, v0, :cond_2

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    if-eq v2, v3, :cond_4

    .line 57
    .line 58
    if-eq v0, v3, :cond_3

    .line 59
    .line 60
    if-eq v2, v3, :cond_3

    .line 61
    .line 62
    if-ge v0, v2, :cond_3

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuffer;

    .line 68
    .line 69
    const-string v3, "wrong state posLt="

    .line 70
    .line 71
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 75
    .line 76
    .line 77
    const-string v0, " posAmp="

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    const-string v0, " for "

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_4
    :goto_1
    if-ge v5, v0, :cond_5

    .line 102
    .line 103
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    .line 109
    .line 110
    :cond_5
    const-string v5, "&lt;"

    .line 111
    .line 112
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    .line 114
    .line 115
    add-int/lit8 v5, v0, 0x1

    .line 116
    .line 117
    invoke-virtual {p1, p0, v5}, Ljava/lang/String;->indexOf(II)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    goto :goto_0

    .line 122
    :cond_6
    :goto_2
    if-ge v5, v2, :cond_7

    .line 123
    .line 124
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    .line 130
    .line 131
    :cond_7
    const-string v5, "&amp;"

    .line 132
    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    .line 135
    .line 136
    add-int/lit8 v5, v2, 0x1

    .line 137
    .line 138
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->indexOf(II)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    goto :goto_0
.end method

.method public event(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->docdecl(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->comment(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->processingInstruction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->ignorableWhitespace(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->entityRef(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->cdsect(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-lez v0, :cond_0

    .line 62
    .line 63
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->ignorableWhitespace(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, v0, p1}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_8
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_9
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->endDocument()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_a
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xmldecl-standalone"

    .line 100
    .line 101
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Ljava/lang/Boolean;

    .line 106
    .line 107
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p0, p1, v0}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public fragment(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 8
    .line 9
    mul-int/lit8 v2, v2, 0x1e

    .line 10
    .line 11
    add-int/2addr v2, v1

    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const-string v1, "<fragment"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    sub-int/2addr v1, v2

    .line 24
    :goto_0
    if-gez v1, :cond_2

    .line 25
    .line 26
    const-string v1, ">"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    const-string p1, "</fragment>"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 40
    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->wf:Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;

    .line 44
    .line 45
    invoke-virtual {p1}, Lorg/xmlpull/v1/wrapper/XmlPullWrapperFactory;->newPullParserWrapper()Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 50
    .line 51
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 56
    .line 57
    new-instance v1, Ljava/io/StringReader;

    .line 58
    .line 59
    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 66
    .line 67
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    const/4 v3, 0x0

    .line 74
    const-string v4, "fragment"

    .line 75
    .line 76
    invoke-interface {p1, v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 80
    .line 81
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 85
    .line 86
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-ne p1, v2, :cond_1

    .line 91
    .line 92
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 93
    .line 94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    const/4 v0, 0x3

    .line 99
    if-ne p1, v0, :cond_1

    .line 100
    .line 101
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 102
    .line 103
    invoke-interface {p0, v0, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_1
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->fragmentParser:Lorg/xmlpull/v1/wrapper/XmlPullParserWrapper;

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->event(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    .line 114
    .line 115
    aget-object v3, v3, v1

    .line 116
    .line 117
    iget v4, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 118
    .line 119
    sub-int/2addr v4, v2

    .line 120
    :goto_2
    if-gt v4, v1, :cond_4

    .line 121
    .line 122
    const-string v4, " xmlns"

    .line 123
    .line 124
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-lez v4, :cond_3

    .line 132
    .line 133
    const/16 v4, 0x3a

    .line 134
    .line 135
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    .line 140
    .line 141
    :cond_3
    const-string v3, "=\'"

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    .line 145
    .line 146
    iget-object v3, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    .line 147
    .line 148
    aget-object v3, v3, v1

    .line 149
    .line 150
    invoke-virtual {p0, v3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->escapeAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    .line 156
    .line 157
    const-string v3, "\'"

    .line 158
    .line 159
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_4
    iget-object v5, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    .line 164
    .line 165
    aget-object v5, v5, v4

    .line 166
    .line 167
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-eqz v5, :cond_5

    .line 172
    .line 173
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    :cond_5
    add-int/lit8 v4, v4, -0x1

    .line 178
    .line 179
    goto :goto_2
.end method

.method public getCurrentNamespaceForElements()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCurrentNamespaceForElements(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->getDepth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 11
    .line 12
    add-int/lit8 v1, v1, -0x1

    .line 13
    .line 14
    :goto_0
    if-gez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceDepth:[I

    .line 18
    .line 19
    aget v2, v2, v1

    .line 20
    .line 21
    if-gt v2, v0, :cond_2

    .line 22
    .line 23
    :goto_1
    iget v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 24
    .line 25
    iget-object v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    .line 26
    .line 27
    array-length v1, v1

    .line 28
    if-lt v0, v1, :cond_1

    .line 29
    .line 30
    invoke-direct {p0}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->ensureNamespacesCapacity()V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespacePrefix:[Ljava/lang/String;

    .line 34
    .line 35
    iget v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 36
    .line 37
    aput-object p1, v0, v1

    .line 38
    .line 39
    iget-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceUri:[Ljava/lang/String;

    .line 40
    .line 41
    aput-object p2, p1, v1

    .line 42
    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    iput v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    iget v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 49
    .line 50
    add-int/lit8 v2, v2, -0x1

    .line 51
    .line 52
    iput v2, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->namespaceEnd:I

    .line 53
    .line 54
    add-int/lit8 v1, v1, -0x1

    .line 55
    .line 56
    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;)Lorg/xmlpull/v1/wrapper/XmlSerializerWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->currentNs:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public wiriteStringElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeString(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public writeDouble(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2
    .line 3
    cmpl-double v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    .line 9
    const-string p1, "INF"

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 16
    .line 17
    cmpl-double v0, p1, v0

    .line 18
    .line 19
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string p1, "-INF"

    .line 24
    .line 25
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public writeDoubleElement(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p3, p4}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeDouble(D)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public writeFloat(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 2
    .line 3
    cmpl-float v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    .line 9
    const-string p1, "INF"

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 16
    .line 17
    cmpl-float v0, p1, v0

    .line 18
    .line 19
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string p1, "-INF"

    .line 24
    .line 25
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public writeFloatElement(Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeFloat(F)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public writeInt(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public writeIntElement(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p3}, Lorg/xmlpull/v1/wrapper/classic/StaticXmlSerializerWrapper;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string p0, "null string can not be written"

    .line 10
    .line 11
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
