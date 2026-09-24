.class public Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# instance fields
.field protected pp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
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
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getAttributeCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

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

.method public getAttributeName(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

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

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

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

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getColumnNumber()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

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

.method public getDepth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getEventType()I
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
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getInputEncoding()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

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

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    .line 8
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getNamespaceCount(I)I
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
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
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
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
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
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getTextCharacters([I)[C
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getTextCharacters([I)[C

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public isAttributeDefault(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->isAttributeDefault(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isEmptyElementTag()Z
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
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isWhitespace()Z
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
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->isWhitespace()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public next()I
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
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public nextTag()I
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
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public nextText()Ljava/lang/String;
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

.method public nextToken()I
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
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
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
    invoke-interface {p0, p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
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
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlPullParserDelegate;->pp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public setInput(Ljava/io/Reader;)V
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
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
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
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
