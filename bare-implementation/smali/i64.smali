.class public final Li64;
.super Lh3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# virtual methods
.method public final a(Lun2;Lke;)Lgt0;
    .locals 7

    .line 1
    iget p0, p1, Lun2;->e:I

    .line 2
    .line 3
    iget-object v0, p1, Lun2;->a:Ljava/lang/CharSequence;

    .line 4
    .line 5
    iget v1, p1, Lun2;->g:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    if-ge v1, v2, :cond_2

    .line 9
    .line 10
    invoke-interface {v0, p0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v2, 0x3c

    .line 15
    .line 16
    if-ne v1, v2, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    move v2, v1

    .line 20
    :goto_0
    const/4 v3, 0x7

    .line 21
    if-gt v2, v3, :cond_2

    .line 22
    .line 23
    if-ne v2, v3, :cond_0

    .line 24
    .line 25
    iget-object v3, p2, Lke;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v3, Lg3;

    .line 28
    .line 29
    invoke-virtual {v3}, Lg3;->e()Lws0;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    instance-of v3, v3, Lrw5;

    .line 34
    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    sget-object v3, Lj64;->e:[[Ljava/util/regex/Pattern;

    .line 39
    .line 40
    aget-object v3, v3, v2

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    aget-object v5, v3, v4

    .line 44
    .line 45
    aget-object v3, v3, v1

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    invoke-interface {v0, p0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    new-instance p0, Lj64;

    .line 66
    .line 67
    invoke-direct {p0, v3}, Lj64;-><init>(Ljava/util/regex/Pattern;)V

    .line 68
    .line 69
    .line 70
    new-array p2, v1, [Lg3;

    .line 71
    .line 72
    aput-object p0, p2, v4

    .line 73
    .line 74
    new-instance p0, Lgt0;

    .line 75
    .line 76
    invoke-direct {p0, p2}, Lgt0;-><init>([Lg3;)V

    .line 77
    .line 78
    .line 79
    iget p1, p1, Lun2;->b:I

    .line 80
    .line 81
    iput p1, p0, Lgt0;->b:I

    .line 82
    .line 83
    return-object p0

    .line 84
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const/4 p0, 0x0

    .line 88
    return-object p0
.end method
