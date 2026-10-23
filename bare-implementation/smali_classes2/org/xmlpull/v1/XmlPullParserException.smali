.class public Lorg/xmlpull/v1/XmlPullParserException;
.super Ljava/lang/Exception;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field protected column:I

.field protected detail:Ljava/lang/Throwable;

.field protected row:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 101
    iput p1, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    .line 102
    iput p1, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ""

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    move-object p1, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v2, " "

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    .line 20
    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    move-object p1, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    .line 26
    .line 27
    const-string v2, "(position:"

    .line 28
    .line 29
    invoke-direct {p1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    .line 38
    .line 39
    const-string v2, ") "

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    .line 50
    .line 51
    if-nez p3, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    new-instance p1, Ljava/lang/StringBuffer;

    .line 55
    .line 56
    const-string v1, "caused by: "

    .line 57
    .line 58
    invoke-direct {p1, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p1, -0x1

    .line 79
    iput p1, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    .line 80
    .line 81
    iput p1, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    .line 82
    .line 83
    if-eqz p2, :cond_3

    .line 84
    .line 85
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iput p1, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    .line 90
    .line 91
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    iput p1, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    .line 96
    .line 97
    :cond_3
    iput-object p3, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    .line 98
    .line 99
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/xmlpull/v1/XmlPullParserException;->column:I

    .line 2
    .line 3
    return p0
.end method

.method public getDetail()Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    .line 1
    iget p0, p0, Lorg/xmlpull/v1/XmlPullParserException;->row:I

    .line 2
    .line 3
    return p0
.end method

.method public printStackTrace()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuffer;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-super {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    const-string v3, "; nested exception is:"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lorg/xmlpull/v1/XmlPullParserException;->detail:Ljava/lang/Throwable;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method
