.class public abstract Lorg/xmlpull/v1/builder/XmlPullBuilder;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field protected factory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newInstance()Lorg/xmlpull/v1/builder/XmlPullBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/xmlpull/v1/builder/impl/XmlPullBuilderImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, v0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuffer;

    .line 21
    .line 22
    const-string v3, "could not create XmlPull factory:"

    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2, v0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v1
.end method


# virtual methods
.method public getFactory()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 2
    .line 3
    return-object p0
.end method

.method public newDocument()Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->newDocument(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDocument;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public abstract newDocument(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract newFragment(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract newFragment(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract newFragment(Lorg/xmlpull/v1/builder/XmlNamespace;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract newNamespace(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract newNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlNamespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public parseFragementFromInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 1
    const-string v0, ")"

    .line 2
    .line 3
    const-string v1, "IO error when starting to parse input stream (encoding="

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 6
    .line 7
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parseFragment(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :catch_1
    move-exception p0

    .line 25
    :try_start_2
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 26
    .line 27
    new-instance v2, Ljava/lang/StringBuffer;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {p1, v1, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw p1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 46
    :goto_0
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuffer;

    .line 49
    .line 50
    const-string v2, "could not start parsing input stream (encoding="

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-direct {p1, p2, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method

.method public abstract parseFragment(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public parseFragmentFromInputStream(Ljava/io/InputStream;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    .line 10
    .line 11
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parseFragment(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    :try_start_2
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 21
    .line 22
    const-string v0, "IO error when starting to parse input stream"

    .line 23
    .line 24
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    throw p1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 28
    :catch_1
    move-exception p0

    .line 29
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 30
    .line 31
    const-string v0, "could not start parsing input stream"

    .line 32
    .line 33
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    throw p1
.end method

.method public parseFragmentFromReader(Ljava/io/Reader;)Lorg/xmlpull/v1/builder/XmlElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    .line 9
    .line 10
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parseFragment(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    :try_start_2
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 20
    .line 21
    const-string v0, "IO error when starting to parse from reader"

    .line 22
    .line 23
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .line 25
    .line 26
    throw p1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 27
    :catch_1
    move-exception p0

    .line 28
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 29
    .line 30
    const-string v0, "could not start parsing input from reader"

    .line 31
    .line 32
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public parseInputStream(Ljava/io/InputStream;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 44
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    const-string v0, "could not start parsing input stream"

    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public parseInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuffer;

    .line 19
    .line 20
    const-string v1, "could not start parsing input stream (encoding="

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    const-string p2, ")"

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method public abstract parseItem(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract parseLocation(Ljava/lang/String;)Lorg/xmlpull/v1/builder/XmlDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public parseReader(Ljava/io/Reader;)Lorg/xmlpull/v1/builder/XmlDocument;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->parse(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlDocument;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 17
    .line 18
    const-string v0, "could not start parsing input from reader"

    .line 19
    .line 20
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public abstract parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/builder/XmlElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract serialize(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract serializeEndTag(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract serializeItem(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public abstract serializeStartTag(Lorg/xmlpull/v1/builder/XmlElement;Lorg/xmlpull/v1/XmlSerializer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation
.end method

.method public serializeToOutputStream(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 40
    const-string v0, "UTF8"

    invoke-virtual {p0, p1, p2, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->serializeToOutputStream(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public serializeToOutputStream(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p2, p3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->serialize(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuffer;

    .line 18
    .line 19
    const-string v0, "could not serialize node to output stream (encoding="

    .line 20
    .line 21
    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    .line 26
    .line 27
    const-string p3, ")"

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public serializeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->serializeToWriter(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public serializeToWriter(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xmlpull/v1/builder/XmlPullBuilder;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lorg/xmlpull/v1/builder/XmlPullBuilder;->serialize(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 16
    .line 17
    const-string p2, "could not serialize node to writer"

    .line 18
    .line 19
    invoke-direct {p1, p2, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public skipSubTree(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/builder/XmlBuilderException;
        }
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    const/4 v0, 0x2

    .line 3
    :try_start_0
    invoke-interface {p1, v0, p0, p0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    :cond_0
    :goto_0
    if-gtz p0, :cond_1

    .line 8
    .line 9
    return-void

    .line 10
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const/4 v2, 0x3

    .line 15
    if-ne v1, v2, :cond_2

    .line 16
    .line 17
    add-int/lit8 p0, p0, -0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    if-ne v1, v0, :cond_0

    .line 21
    .line 22
    add-int/lit8 p0, p0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 27
    .line 28
    const-string v0, "IO error when skipping subtree"

    .line 29
    .line 30
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :catch_1
    move-exception p0

    .line 35
    new-instance p1, Lorg/xmlpull/v1/builder/XmlBuilderException;

    .line 36
    .line 37
    const-string v0, "could not skip subtree"

    .line 38
    .line 39
    invoke-direct {p1, v0, p0}, Lorg/xmlpull/v1/builder/XmlBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method
