.class public final Lwc6;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lw83;


# static fields
.field public static final c:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Ljava/io/File;

.field public b:Lvc6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lwc6;->c:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwc6;->a:Ljava/io/File;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lwc6;->b:Lvc6;

    .line 2
    .line 3
    const-string v1, "There was a problem closing the Crashlytics log file."

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljm1;->h(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lwc6;->b:Lvc6;

    .line 10
    .line 11
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lwc6;->a:Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lwc6;->b:Lvc6;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v1, Lvc6;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Lvc6;-><init>(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lwc6;->b:Lvc6;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Could not open log file: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "FirebaseCrashlytics"

    .line 31
    .line 32
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lwc6;->g()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    sget-object v1, Lwc6;->c:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
.end method

.method public final g()[B
    .locals 6

    .line 1
    iget-object v0, p0, Lwc6;->a:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :goto_0
    move-object p0, v2

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {p0}, Lwc6;->b()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lwc6;->b:Lvc6;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    filled-new-array {v1}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v0}, Lvc6;->u()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    new-array v0, v0, [B

    .line 30
    .line 31
    :try_start_0
    iget-object p0, p0, Lwc6;->b:Lvc6;

    .line 32
    .line 33
    new-instance v4, Lix0;

    .line 34
    .line 35
    const/4 v5, 0x7

    .line 36
    invoke-direct {v4, v5, v0, v3}, Lix0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v4}, Lvc6;->g(Luc6;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    const-string v4, "A problem occurred while reading the Crashlytics log file."

    .line 45
    .line 46
    const-string v5, "FirebaseCrashlytics"

    .line 47
    .line 48
    invoke-static {v5, v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    :goto_1
    new-instance p0, Lyh3;

    .line 52
    .line 53
    aget v3, v3, v1

    .line 54
    .line 55
    invoke-direct {p0, v0, v3}, Lyh3;-><init>([BI)V

    .line 56
    .line 57
    .line 58
    :goto_2
    if-nez p0, :cond_2

    .line 59
    .line 60
    return-object v2

    .line 61
    :cond_2
    iget v0, p0, Lyh3;->b:I

    .line 62
    .line 63
    new-array v2, v0, [B

    .line 64
    .line 65
    iget-object p0, p0, Lyh3;->a:[B

    .line 66
    .line 67
    invoke-static {p0, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    .line 69
    .line 70
    return-object v2
.end method

.method public final i()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lwc6;->a()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lwc6;->a:Ljava/io/File;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final n(JLjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lwc6;->b()V

    .line 2
    .line 3
    .line 4
    const-string v0, " "

    .line 5
    .line 6
    const-string v1, "..."

    .line 7
    .line 8
    iget-object v2, p0, Lwc6;->b:Lvc6;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    if-nez p3, :cond_1

    .line 14
    .line 15
    const-string p3, "null"

    .line 16
    .line 17
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/16 v3, 0x4000

    .line 22
    .line 23
    if-le v2, v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sub-int/2addr v2, v3

    .line 30
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    :cond_2
    const-string v1, "\r"

    .line 39
    .line 40
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    const-string v1, "\n"

    .line 45
    .line 46
    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 51
    .line 52
    const-string v1, "%d %s%n"

    .line 53
    .line 54
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object p2, Lwc6;->c:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object p2, p0, Lwc6;->b:Lvc6;

    .line 73
    .line 74
    invoke-virtual {p2, p1}, Lvc6;->a([B)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iget-object p1, p0, Lwc6;->b:Lvc6;

    .line 78
    .line 79
    invoke-virtual {p1}, Lvc6;->h()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    iget-object p1, p0, Lwc6;->b:Lvc6;

    .line 86
    .line 87
    invoke-virtual {p1}, Lvc6;->u()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/high16 p2, 0x10000

    .line 92
    .line 93
    if-le p1, p2, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Lwc6;->b:Lvc6;

    .line 96
    .line 97
    invoke-virtual {p1}, Lvc6;->n()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    :goto_1
    return-void

    .line 102
    :catch_0
    move-exception p0

    .line 103
    const-string p1, "There was a problem writing to the Crashlytics log."

    .line 104
    .line 105
    const-string p2, "FirebaseCrashlytics"

    .line 106
    .line 107
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .line 109
    .line 110
    return-void
.end method
