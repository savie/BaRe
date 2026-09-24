.class public Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;
.super Lorg/xmlpull/v1/builder/XmlPullBuilder;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field private static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field private static final PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private parseDocumentStart(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 2

    .line 1
    const-string p0, "parser must be positioned on beginning of document and not "

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 10
    .line 11
    .line 12
    const-string p0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    .line 13
    .line 14
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    .line 21
    .line 22
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v1, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;

    .line 33
    .line 34
    invoke-direct {v1, p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuffer;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    move-exception p0

    .line 61
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 62
    .line 63
    const-string v0, "could not read XML document prolog"

    .line 64
    .line 65
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :catch_1
    move-exception p0

    .line 70
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 71
    .line 72
    const-string v0, "could not parse XML document prolog"

    .line 73
    .line 74
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    throw p1
.end method

.method private serializeContainer(Lorg/xmlpull/v1/builder/XmlContainer;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlSerializable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/xmlpull/v1/builder/XmlSerializable;

    .line 6
    .line 7
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/builder/XmlSerializable;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlDocument;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, Lorg/xmlpull/v1/builder/XmlDocument;

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeDocument(Lorg/xmlpull/v1/builder/XmlDocument;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlElement;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    check-cast p1, Lorg/xmlpull/v1/builder/XmlElement;

    .line 26
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeFragment(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuffer;

    .line 34
    .line 35
    const-string v0, "could not serialzie unknown XML container "

    .line 36
    .line 37
    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method private serializeDocument(Lorg/xmlpull/v1/builder/XmlDocument;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlDocument;->isStandalone()Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    .line 11
    .line 12
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlDocument;->getDocumentElement()Lorg/xmlpull/v1/builder/XmlElement;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeFragment(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 17
    .line 18
    .line 19
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 25
    .line 26
    const-string p2, "serializing XML document end failed"

    .line 27
    .line 28
    invoke-direct {p1, p2, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :catch_1
    move-exception p0

    .line 33
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 34
    .line 35
    const-string p2, "serialziing XML document start failed"

    .line 36
    .line 37
    invoke-direct {p1, p2, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method private serializeFragment(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeStartTag(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->hasChildren()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->children()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    instance-of v2, v1, Lorg/xmlpull/v1/builder/XmlSerializable;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    check-cast v1, Lorg/xmlpull/v1/builder/XmlSerializable;

    .line 30
    .line 31
    invoke-interface {v1, p2}, Lorg/xmlpull/v1/builder/XmlSerializable;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    instance-of v2, v1, Lorg/xmlpull/v1/builder/XmlElement;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    check-cast v1, Lorg/xmlpull/v1/builder/XmlElement;

    .line 40
    .line 41
    invoke-direct {p0, v1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeFragment(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0, v1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeItem(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeEndTag(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public newDocument(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 0

    .line 1
    new-instance p0, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/xmlpull/v1/builder/impl/XmlDocumentImpl;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public newFragment(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1

    .line 1
    new-instance p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public newFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 8
    new-instance p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    invoke-direct {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public newFragment(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 0

    .line 9
    new-instance p0, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    invoke-direct {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)V

    return-object p0
.end method

.method public newNamespace(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 1

    .line 1
    new-instance p0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, p1}, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .locals 0

    .line 8
    new-instance p0, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;

    invoke-direct {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlNamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseDocumentStart(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseFragment(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {v0, p0}, Lorg/xmlpull/v1/builder/XmlDocument;->setDocumentElement(Lorg/xmlpull/v1/builder/XmlElement;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public parseFragment(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 4

    .line 1
    const-string v0, "expected parser to be on start tag and not "

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne v1, v2, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ne v1, v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/builder/XmlElement;->addChild(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    move-object v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v3, 0x3

    .line 30
    if-ne v1, v3, :cond_3

    .line 31
    .line 32
    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlElement;->getParent()Lorg/xmlpull/v1/builder/XmlContainer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_2
    move-object v0, v1

    .line 40
    check-cast v0, Lorg/xmlpull/v1/builder/XmlElement;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 v3, 0x4

    .line 44
    if-ne v1, v3, :cond_0

    .line 45
    .line 46
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/builder/XmlElement;->addChild(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuffer;

    .line 57
    .line 58
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    .line 62
    .line 63
    aget-object v0, v0, v1

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .line 67
    .line 68
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 85
    .line 86
    const-string v0, "could not read XML tree content"

    .line 87
    .line 88
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :catch_1
    move-exception p0

    .line 93
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 94
    .line 95
    const-string v0, "could not build tree from XML"

    .line 96
    .line 97
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw p1
.end method

.method public parseItem(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string v0, "currently unsupported event type "

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 v2, 0x4

    .line 16
    if-ne v1, v2, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    if-nez v1, :cond_2

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->parseDocumentStart(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuffer;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    .line 38
    .line 39
    aget-object v0, v0, v1

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 61
    .line 62
    const-string v0, "could not parse XML item"

    .line 63
    .line 64
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public parseLocation(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    .line 5
    .line 6
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parseInputStream(Ljava/io/InputStream;)Lorg/xmlpull/v1/builder/XmlDocument;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuffer;

    .line 19
    .line 20
    const-string v2, "could not open connection to URL "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuffer;

    .line 40
    .line 41
    const-string v2, "could not parse URL "

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v0, p1, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 9

    .line 1
    const-string p0, "parser must be on START_TAG and not "

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_3

    .line 9
    .line 10
    new-instance v2, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;

    .line 11
    .line 12
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {v2, p0, v0}, Lorg/xmlpull/v1/builder/impl/XmlElementImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    add-int/lit8 p0, p0, -0x1

    .line 28
    .line 29
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-lt p0, v0, :cond_1

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-lt p0, v0, :cond_0

    .line 49
    .line 50
    return-object v2

    .line 51
    :cond_0
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/XmlPullParser;->isAttributeDefault(I)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    xor-int/lit8 v8, v0, 0x1

    .line 76
    .line 77
    invoke-interface/range {v2 .. v8}, Lorg/xmlpull/v1/builder/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 78
    .line 79
    .line 80
    add-int/lit8 p0, p0, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    const-string v0, ""

    .line 90
    .line 91
    :cond_2
    invoke-interface {p1, p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v2, v0, v1}, Lorg/xmlpull/v1/builder/XmlElement;->declareNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 96
    .line 97
    .line 98
    add-int/lit8 p0, p0, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 102
    .line 103
    new-instance v1, Ljava/lang/StringBuffer;

    .line 104
    .line 105
    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-direct {v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    move-object p0, v0

    .line 125
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 126
    .line 127
    const-string v0, "could not parse XML start tag"

    .line 128
    .line 129
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw p1
.end method

.method public serialize(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlContainer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/xmlpull/v1/builder/XmlContainer;

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeContainer(Lorg/xmlpull/v1/builder/XmlContainer;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;->serializeItem(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public serializeEndTag(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getNamespaceName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p2, p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 15
    .line 16
    const-string p2, "serializing XML end tag failed"

    .line 17
    .line 18
    invoke-direct {p1, p2, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public serializeItem(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1

    .line 1
    const-string p0, "could not serialize "

    .line 2
    .line 3
    :try_start_0
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlSerializable;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Lorg/xmlpull/v1/builder/XmlSerializable;

    .line 8
    .line 9
    invoke-interface {p1, p2}, Lorg/xmlpull/v1/builder/XmlSerializable;->serialize(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p2, p0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    instance-of v0, p1, Lorg/xmlpull/v1/builder/XmlComment;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    check-cast p1, Lorg/xmlpull/v1/builder/XmlComment;

    .line 30
    .line 31
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlComment;->getContent()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-interface {p2, p0}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 63
    .line 64
    const-string p2, "serializing XML start tag failed"

    .line 65
    .line 66
    invoke-direct {p1, p2, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method public serializeStartTag(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->hasNamespaceDeclarations()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->namespaces()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lorg/xmlpull/v1/builder/XmlNamespace;

    .line 23
    .line 24
    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlNamespace;->getPrefix()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0}, Lorg/xmlpull/v1/builder/XmlNamespace;->getNamespaceName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getNamespaceName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 45
    .line 46
    .line 47
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->hasAttributes()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_3

    .line 52
    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlElement;->attributes()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lorg/xmlpull/v1/builder/XmlAttribute;

    .line 69
    .line 70
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlAttribute;->getNamespaceName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlAttribute;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {p1}, Lorg/xmlpull/v1/builder/XmlAttribute;->getValue()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-interface {p2, v0, v1, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    :goto_3
    return-void

    .line 87
    :catch_0
    move-exception p0

    .line 88
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 89
    .line 90
    const-string p2, "serializing XML start tag failed"

    .line 91
    .line 92
    invoke-direct {p1, p2, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    throw p1
.end method
