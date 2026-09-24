.class public final synthetic Lud7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpd7;


# instance fields
.field public final synthetic a:Lwd7;

.field public final synthetic b:I

.field public final synthetic c:[B

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lwd7;I[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lud7;->a:Lwd7;

    .line 5
    .line 6
    iput p2, p0, Lud7;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lud7;->c:[B

    .line 9
    .line 10
    iput p4, p0, Lud7;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 8

    .line 1
    iget-object p3, p0, Lud7;->a:Lwd7;

    .line 2
    .line 3
    iget-object v0, p3, Lwd7;->a:Lkr7;

    .line 4
    .line 5
    iget-wide v1, p3, Lwd7;->d:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v3, v1, v3

    .line 10
    .line 11
    iget v4, p0, Lud7;->b:I

    .line 12
    .line 13
    const-string v5, " 2>/dev/null; echo\n"

    .line 14
    .line 15
    const-string v6, "dd of="

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 20
    .line 21
    iget-object v0, v0, Lkr7;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p3}, Lwd7;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    const-string v1, " bs="

    .line 28
    .line 29
    const-string v2, " count=1 "

    .line 30
    .line 31
    invoke-static {v6, v0, v1, v4, v2}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0, p3, v5}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 41
    .line 42
    iget-object v0, v0, Lkr7;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p3}, Lwd7;->b()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    const-string v3, " ibs="

    .line 49
    .line 50
    const-string v7, " count=1 obs="

    .line 51
    .line 52
    invoke-static {v6, v0, v3, v4, v7}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, " seek=1 "

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    :goto_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 84
    .line 85
    .line 86
    iget-object p3, p0, Lud7;->c:[B

    .line 87
    .line 88
    iget p0, p0, Lud7;->d:I

    .line 89
    .line 90
    invoke-virtual {p1, p3, p0, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 94
    .line 95
    .line 96
    sget-object p0, Lwx3;->b:[B

    .line 97
    .line 98
    invoke-virtual {p2, p0}, Ljava/io/InputStream;->read([B)I

    .line 99
    .line 100
    .line 101
    return-void
.end method
