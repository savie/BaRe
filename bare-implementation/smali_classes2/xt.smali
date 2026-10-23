.class public final synthetic Lxt;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lc62;JLuq8;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lxt;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lxt;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-wide p2, p0, Lxt;->b:J

    .line 10
    .line 11
    iput-object p4, p0, Lxt;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lxt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lxt;->b:J

    iput-object p1, p0, Lxt;->c:Ljava/lang/Object;

    iput-object p2, p0, Lxt;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lxt;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lxt;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-wide v2, p0, Lxt;->b:J

    .line 6
    .line 7
    iget-object p0, p0, Lxt;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lc62;

    .line 13
    .line 14
    check-cast v1, Luq8;

    .line 15
    .line 16
    invoke-virtual {p0}, Lc62;->a()Ljava/io/BufferedInputStream;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    cmp-long v0, v2, v4

    .line 23
    .line 24
    if-lez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    cmp-long v0, v6, v4

    .line 31
    .line 32
    if-gtz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v4, -0x1

    .line 39
    if-eq v0, v4, :cond_0

    .line 40
    .line 41
    const-wide/16 v4, -0x1

    .line 42
    .line 43
    add-long/2addr v2, v4

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    .line 46
    .line 47
    const-string v0, "Unexpected EOF while seeking WebDAV upload input"

    .line 48
    .line 49
    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_1
    sub-long/2addr v2, v6

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {}, Lwu0;->b()Lvu0;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v2, Ly4;

    .line 60
    .line 61
    invoke-direct {v2, p0}, Ly4;-><init>(Ljava/io/InputStream;)V

    .line 62
    .line 63
    .line 64
    iput-object v2, v0, Ll5;->k:Ly4;

    .line 65
    .line 66
    iget-wide v1, v1, Luq8;->b:J

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Lvu0;->K(J)V

    .line 69
    .line 70
    .line 71
    new-instance p0, Lwu0;

    .line 72
    .line 73
    invoke-direct {p0, v0}, Lwu0;-><init>(Lvu0;)V

    .line 74
    .line 75
    .line 76
    return-object p0

    .line 77
    :pswitch_0
    check-cast p0, Ljava/lang/String;

    .line 78
    .line 79
    check-cast v1, Ljava/lang/String;

    .line 80
    .line 81
    const/16 v0, 0x64

    .line 82
    .line 83
    invoke-static {v0, v1}, Lnq7;->G0(ILjava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v4, "Size="

    .line 90
    .line 91
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v2, " b ("

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p0, "), Content = "

    .line 106
    .line 107
    invoke-static {v1, p0, v0}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    return-object p0

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
