.class public Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# instance fields
.field protected xs:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getDepth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->getDepth()I

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
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->getFeature(Ljava/lang/String;)Z

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
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->getNamespace()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

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
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 7
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 8
    iget-object p0, p0, Lorg/xmlpull/v1/wrapper/classic/XmlSerializerDelegate;->xs:Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0, p1, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->text([CII)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method
