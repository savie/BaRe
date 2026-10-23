.class public final Lv0;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lnh4;I)V
    .locals 0

    .line 1
    iput p2, p0, Lv0;->e:I

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lol1;-><init>(Ljava/lang/Object;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final C(Lm2;[B)Lz0;
    .locals 3

    .line 1
    iget p1, p0, Lv0;->e:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    new-instance v2, Lp0;

    .line 14
    .line 15
    iget-object p0, p0, Lol1;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lnh4;

    .line 18
    .line 19
    invoke-direct {v2, p0, p2}, Lp0;-><init>(Lnh4;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 20
    .line 21
    .line 22
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 23
    .line 24
    .line 25
    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    if-lez p0, :cond_0

    .line 27
    .line 28
    move p0, v0

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :catch_0
    :cond_0
    move p0, v1

    .line 33
    :goto_1
    if-eqz p0, :cond_1

    .line 34
    .line 35
    :try_start_2
    invoke-virtual {v2}, Lp0;->g()Lz0;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :try_start_3
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_1
    move-exception p0

    .line 44
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {p1, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_3
    throw p0

    .line 63
    :catch_2
    move-exception p0

    .line 64
    goto :goto_4

    .line 65
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 66
    .line 67
    .line 68
    new-instance p0, Lw1;

    .line 69
    .line 70
    invoke-direct {p0, p1, p2}, Lw1;-><init>(Ljava/util/ArrayList;[B)V

    .line 71
    .line 72
    .line 73
    return-object p0

    .line 74
    :goto_4
    new-instance p1, Lo1;

    .line 75
    .line 76
    const-string p2, "Unable to parse the ASN.1 SEQUENCE contents."

    .line 77
    .line 78
    new-array v0, v1, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-direct {p1, p0, p2, v0}, Lo1;-><init>(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :pswitch_0
    array-length p0, p2

    .line 85
    if-nez p0, :cond_2

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_2
    move v0, v1

    .line 89
    :goto_5
    if-eqz v0, :cond_3

    .line 90
    .line 91
    new-instance p0, Lx0;

    .line 92
    .line 93
    sget-object p1, Lm2;->i:Lh2;

    .line 94
    .line 95
    sget-object p2, Lx0;->c:[B

    .line 96
    .line 97
    invoke-direct {p0, p1, p2}, Lr1;-><init>(Lm2;[B)V

    .line 98
    .line 99
    .line 100
    goto :goto_6

    .line 101
    :cond_3
    const-string p0, "ASN.1 NULL can not have a value"

    .line 102
    .line 103
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const/4 p0, 0x0

    .line 107
    :goto_6
    return-object p0

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
