.class public final synthetic Lvd7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lpd7;


# instance fields
.field public final synthetic a:Lwd7;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic k:[I

.field public final synthetic n:[B


# direct methods
.method public synthetic constructor <init>(Lwd7;IIIII[I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvd7;->a:Lwd7;

    .line 5
    .line 6
    iput p2, p0, Lvd7;->b:I

    .line 7
    .line 8
    iput p3, p0, Lvd7;->c:I

    .line 9
    .line 10
    iput p4, p0, Lvd7;->d:I

    .line 11
    .line 12
    iput p5, p0, Lvd7;->e:I

    .line 13
    .line 14
    iput p6, p0, Lvd7;->f:I

    .line 15
    .line 16
    iput-object p7, p0, Lvd7;->k:[I

    .line 17
    .line 18
    iput-object p8, p0, Lvd7;->n:[B

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 2
    .line 3
    iget-object v0, p0, Lvd7;->a:Lwd7;

    .line 4
    .line 5
    iget-object v0, v0, Lwd7;->a:Lkr7;

    .line 6
    .line 7
    iget-object v0, v0, Lkr7;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, " ibs="

    .line 10
    .line 11
    const-string v2, " skip="

    .line 12
    .line 13
    const-string v3, "dd if="

    .line 14
    .line 15
    iget v4, p0, Lvd7;->c:I

    .line 16
    .line 17
    invoke-static {v3, v0, v1, v4, v2}, Ldj7;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, " count="

    .line 22
    .line 23
    const-string v2, " obs="

    .line 24
    .line 25
    iget v3, p0, Lvd7;->d:I

    .line 26
    .line 27
    iget v4, p0, Lvd7;->e:I

    .line 28
    .line 29
    invoke-static {v0, v3, v1, v4, v2}, Lxs1;->s(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, " 2>/dev/null; echo >&2\n"

    .line 33
    .line 34
    iget v2, p0, Lvd7;->f:I

    .line 35
    .line 36
    invoke-static {v0, v2, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 50
    .line 51
    .line 52
    iget p1, p0, Lvd7;->b:I

    .line 53
    .line 54
    :goto_0
    iget-object v0, p0, Lvd7;->k:[I

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    aget v3, v0, v1

    .line 58
    .line 59
    if-eq v3, v2, :cond_0

    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/io/InputStream;->available()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    :cond_0
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iget-object v4, p0, Lvd7;->n:[B

    .line 78
    .line 79
    invoke-virtual {p2, v4, p1, v3}, Ljava/io/InputStream;->read([BII)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    add-int/2addr p1, v3

    .line 84
    aget v4, v0, v1

    .line 85
    .line 86
    add-int/2addr v4, v3

    .line 87
    aput v4, v0, v1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    sget-object p0, Lwx3;->b:[B

    .line 91
    .line 92
    invoke-virtual {p3, p0}, Ljava/io/InputStream;->read([B)I

    .line 93
    .line 94
    .line 95
    return-void
.end method
