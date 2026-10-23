.class public final Lkb4;
.super Lg3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lib4;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lib4;

    .line 5
    .line 6
    invoke-direct {v0}, Lon5;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lkb4;->a:Lib4;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lkb4;->b:Ljava/util/ArrayList;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lkb4;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()V
    .locals 9

    .line 1
    iget-object v0, p0, Lkb4;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    const/4 v2, 0x0

    .line 10
    if-ltz v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    move v5, v2

    .line 23
    :goto_1
    const/4 v6, -0x1

    .line 24
    if-ge v5, v4, :cond_1

    .line 25
    .line 26
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    const/16 v8, 0x20

    .line 31
    .line 32
    if-eq v7, v8, :cond_0

    .line 33
    .line 34
    packed-switch v7, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v5, v6

    .line 42
    :goto_2
    if-ne v5, v6, :cond_2

    .line 43
    .line 44
    add-int/lit8 v1, v1, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    :goto_3
    add-int/lit8 v4, v1, 0x1

    .line 53
    .line 54
    if-ge v2, v4, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/CharSequence;

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const/16 v4, 0xa

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object p0, p0, Lkb4;->a:Lib4;

    .line 78
    .line 79
    iput-object v0, p0, Lib4;->f:Ljava/lang/String;

    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lws0;
    .locals 0

    .line 1
    iget-object p0, p0, Lkb4;->a:Lib4;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h(Lun2;)Lys0;
    .locals 2

    .line 1
    iget p0, p1, Lun2;->g:I

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    .line 6
    iget p0, p1, Lun2;->c:I

    .line 7
    .line 8
    add-int/2addr p0, v0

    .line 9
    new-instance p1, Lys0;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p1, v0, p0, v1}, Lys0;-><init>(IIZ)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :cond_0
    iget-boolean p0, p1, Lun2;->h:Z

    .line 18
    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    iget p0, p1, Lun2;->e:I

    .line 22
    .line 23
    invoke-static {p0}, Lys0;->a(I)Lys0;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method
