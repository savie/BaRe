.class public Lorg/xmlpull/v1/sax2/Driver;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lorg/xml/sax/Locator;
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/Attributes;


# static fields
.field protected static final APACHE_DYNAMIC_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final APACHE_SCHEMA_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final DECLARATION_HANDLER_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field protected static final LEXICAL_HANDLER_PROPERTY:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field protected static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_PREFIXES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field protected static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"


# instance fields
.field protected contentHandler:Lorg/xml/sax/ContentHandler;

.field protected errorHandler:Lorg/xml/sax/ErrorHandler;

.field protected pp:Lorg/xmlpull/v1/XmlPullParser;

.field protected systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 10
    .line 11
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 17
    .line 18
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 35
    new-instance v0, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 36
    iput-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 1
    const-string v0, "http://xml.org/sax/features/namespaces"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 10
    .line 11
    const-string p1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 12
    .line 13
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 27
    .line 28
    const-string p1, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    .line 29
    .line 30
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_1
    const-string v0, "http://xml.org/sax/features/validation"

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    const-string p1, "http://xmlpull.org/v1/doc/features.html#validation"

    .line 46
    .line 47
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_2
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 40
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 41
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 3
    .line 4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 p0, -0x1

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    return v0

    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0
.end method

.method public getLength()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getLineNumber()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 1
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return-object v1

    .line 20
    :cond_1
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 21
    .line 22
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuffer;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x3a

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 23
    .line 24
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_0
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 37
    .line 38
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 3
    .line 4
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 13
    .line 14
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 37
    .line 38
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 9
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/sax2/Driver;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "expected start tag not"

    .line 2
    .line 3
    const-string v1, "could not open file with systemId "

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iput-object v2, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 12
    .line 13
    invoke-interface {v2, p0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v3, "parsing initialization error: "

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    new-instance p1, Lorg/xml/sax/SAXParseException;

    .line 43
    .line 44
    const-string v0, "null source systemId"

    .line 45
    .line 46
    invoke-direct {p1, v0, p0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 50
    .line 51
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catch_0
    move-exception p1

    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_0
    :try_start_1
    new-instance p1, Ljava/net/URL;

    .line 59
    .line 60
    iget-object v2, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-direct {p1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 66
    .line 67
    .line 68
    move-result-object v2
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :catch_1
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    .line 71
    .line 72
    iget-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_2
    move-exception p1

    .line 79
    :try_start_3
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 80
    .line 81
    new-instance v2, Ljava/lang/StringBuffer;

    .line 82
    .line 83
    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->systemId:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-direct {v0, v1, p0, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 99
    .line 100
    invoke-interface {p1, v0}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 105
    .line 106
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_2
    iget-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 111
    .line 112
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0

    .line 113
    .line 114
    .line 115
    :goto_1
    :try_start_4
    iget-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 116
    .line 117
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 121
    .line 122
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 126
    .line 127
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    const/4 v1, 0x2

    .line 132
    if-eq p1, v1, :cond_3

    .line 133
    .line 134
    new-instance p1, Lorg/xml/sax/SAXParseException;

    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuffer;

    .line 137
    .line 138
    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 142
    .line 143
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-direct {p1, v0, p0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 158
    .line 159
    invoke-interface {v0, p1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3

    .line 160
    .line 161
    .line 162
    :goto_2
    return-void

    .line 163
    :catch_3
    move-exception p1

    .line 164
    goto :goto_3

    .line 165
    :cond_3
    iget-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 166
    .line 167
    invoke-virtual {p0, p1}, Lorg/xmlpull/v1/sax2/Driver;->parseSubTree(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 171
    .line 172
    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :goto_3
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 177
    .line 178
    new-instance v1, Ljava/lang/StringBuffer;

    .line 179
    .line 180
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-direct {v0, v1, p0, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    .line 191
    .line 192
    .line 193
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 194
    .line 195
    invoke-interface {p0, v0}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :goto_4
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 200
    .line 201
    new-instance v1, Ljava/lang/StringBuffer;

    .line 202
    .line 203
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-direct {v0, v1, p0, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    .line 214
    .line 215
    .line 216
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 217
    .line 218
    invoke-interface {p0, v0}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 219
    .line 220
    .line 221
    return-void
.end method

.method public parseSubTree(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "start tag must be read before skiping subtree"

    .line 2
    .line 3
    iput-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 6
    .line 7
    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x2

    .line 16
    if-ne v2, v3, :cond_f

    .line 17
    .line 18
    new-array v0, v3, [I

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuffer;

    .line 21
    .line 22
    const/16 v4, 0x10

    .line 23
    .line 24
    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const/4 v5, 0x1

    .line 32
    sub-int/2addr v4, v5

    .line 33
    move v6, v3

    .line 34
    :cond_0
    if-eq v6, v5, :cond_e

    .line 35
    .line 36
    const/16 v7, 0x3a

    .line 37
    .line 38
    const/4 v8, 0x0

    .line 39
    if-eq v6, v3, :cond_8

    .line 40
    .line 41
    const/4 v9, 0x3

    .line 42
    if-eq v6, v9, :cond_2

    .line 43
    .line 44
    const/4 v7, 0x4

    .line 45
    if-eq v6, v7, :cond_1

    .line 46
    .line 47
    goto/16 :goto_5

    .line 48
    .line 49
    :cond_1
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    iget-object v7, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 54
    .line 55
    aget v8, v0, v8

    .line 56
    .line 57
    aget v9, v0, v5

    .line 58
    .line 59
    invoke-interface {v7, v6, v8, v9}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_5

    .line 63
    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto/16 :goto_6

    .line 66
    .line 67
    :cond_2
    if-eqz v1, :cond_7

    .line 68
    .line 69
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    if-eqz v9, :cond_3

    .line 78
    .line 79
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    :cond_3
    iget-object v7, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 92
    .line 93
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v10

    .line 97
    if-eqz v9, :cond_4

    .line 98
    .line 99
    move-object v9, v6

    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    :goto_0
    invoke-interface {v7, v10, v6, v9}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-le v4, v6, :cond_5

    .line 113
    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    sub-int/2addr v6, v5

    .line 127
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    sub-int/2addr v6, v5

    .line 132
    :goto_1
    if-ge v6, v8, :cond_6

    .line 133
    .line 134
    goto/16 :goto_5

    .line 135
    .line 136
    :cond_6
    iget-object v7, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 137
    .line 138
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    invoke-interface {v7, v9}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    add-int/lit8 v6, v6, -0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    iget-object v6, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 149
    .line 150
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v7

    .line 154
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    invoke-interface {v6, v7, v8, v9}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_8
    if-eqz v1, :cond_d

    .line 167
    .line 168
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    add-int/lit8 v9, v6, -0x1

    .line 173
    .line 174
    if-le v4, v9, :cond_9

    .line 175
    .line 176
    invoke-interface {p1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    goto :goto_2

    .line 181
    :cond_9
    move v9, v8

    .line 182
    :goto_2
    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    :goto_3
    if-lt v9, v6, :cond_c

    .line 187
    .line 188
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    if-eqz v9, :cond_a

    .line 197
    .line 198
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    .line 209
    .line 210
    :cond_a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    if-eqz v9, :cond_b

    .line 215
    .line 216
    move-object v8, v6

    .line 217
    goto :goto_4

    .line 218
    :cond_b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    :goto_4
    invoke-virtual {p0, v7, v6, v8}, Lorg/xmlpull/v1/sax2/Driver;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_c
    iget-object v10, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 227
    .line 228
    invoke-interface {p1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    invoke-interface {p1, v9}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    invoke-interface {v10, v11, v12}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    add-int/lit8 v9, v9, 0x1

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v7

    .line 250
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    invoke-virtual {p0, v6, v7, v8}, Lorg/xmlpull/v1/sax2/Driver;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    if-gt v7, v4, :cond_0

    .line 266
    .line 267
    :cond_e
    return-void

    .line 268
    :cond_f
    new-instance v1, Lorg/xml/sax/SAXException;

    .line 269
    .line 270
    new-instance v2, Ljava/lang/StringBuffer;

    .line 271
    .line 272
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    invoke-direct {v1, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    throw v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_6
    new-instance v0, Lorg/xml/sax/SAXParseException;

    .line 291
    .line 292
    new-instance v1, Ljava/lang/StringBuffer;

    .line 293
    .line 294
    const-string v2, "parsing error: "

    .line 295
    .line 296
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-direct {v0, v1, p0, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 310
    .line 311
    .line 312
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 313
    .line 314
    invoke-interface {p0, v0}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 315
    .line 316
    .line 317
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/xmlpull/v1/sax2/Driver;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 2
    .line 3
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#report-namespace-prefixes"

    .line 2
    .line 3
    :try_start_0
    const-string v1, "http://xml.org/sax/features/namespaces"

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 12
    .line 13
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 14
    .line 15
    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 30
    .line 31
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eq v1, p2, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 38
    .line 39
    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void

    .line 43
    :cond_2
    const-string v0, "http://xml.org/sax/features/validation"

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    :try_start_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#validation"

    .line 54
    .line 55
    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :goto_0
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuffer;

    .line 66
    .line 67
    const-string v1, "problem with setting feature "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    const-string p1, ": "

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-direct {p2, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 1
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "not supported setting property "

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    :try_start_0
    iget-object p0, p0, Lorg/xmlpull/v1/sax2/Driver;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 20
    .line 21
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance p2, Lorg/xml/sax/SAXNotSupportedException;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuffer;

    .line 29
    .line 30
    const-string v1, "not supported set property "

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    const-string p1, ": "

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p2, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p2

    .line 54
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    .line 55
    .line 56
    new-instance p2, Ljava/lang/StringBuffer;

    .line 57
    .line 58
    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0

    .line 72
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    .line 73
    .line 74
    new-instance p2, Ljava/lang/StringBuffer;

    .line 75
    .line 76
    invoke-direct {p2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/sax2/Driver;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p0}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
