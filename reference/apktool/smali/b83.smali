.class public final Lb83;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lr73;


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/16 p0, 0x25

    .line 2
    .line 3
    return p0
.end method

.method public final c(Low0;)Lt73;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Low0;->b:Lvw2;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lvw2;->e(Low0;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    iget-object v1, v0, Low0;->b:Lvw2;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lvw2;->e(Low0;)J

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lms8;->H(Low0;)Lga3;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    invoke-static {v0}, Lms8;->H(Low0;)Lga3;

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lms8;->H(Low0;)Lga3;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-static {v0}, Lms8;->H(Low0;)Lga3;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lvw2;->f(Low0;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v8

    .line 32
    invoke-virtual {v1, v0}, Lvw2;->f(Low0;)J

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Lvw2;->e(Low0;)J

    .line 36
    .line 37
    .line 38
    move-result-wide v10

    .line 39
    invoke-virtual {v1, v0}, Lvw2;->e(Low0;)J

    .line 40
    .line 41
    .line 42
    move-result-wide v12

    .line 43
    invoke-virtual {v1, v0}, Lvw2;->e(Low0;)J

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Low0;->n()B

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-virtual {v0}, Low0;->n()B

    .line 51
    .line 52
    .line 53
    const/16 v5, 0x18

    .line 54
    .line 55
    new-array v14, v5, [B

    .line 56
    .line 57
    invoke-virtual {v0, v14, v5}, Low0;->o([BI)V

    .line 58
    .line 59
    .line 60
    new-instance v5, Ljava/lang/String;

    .line 61
    .line 62
    sget-object v15, Lh51;->c:Ljava/nio/charset/Charset;

    .line 63
    .line 64
    move-wide/from16 v16, v3

    .line 65
    .line 66
    const/4 v3, 0x0

    .line 67
    invoke-direct {v5, v14, v3, v2, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Low0;->r()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lvw2;->a(Low0;)J

    .line 74
    .line 75
    .line 76
    long-to-int v1, v12

    .line 77
    div-int/lit8 v1, v1, 0x2

    .line 78
    .line 79
    invoke-virtual {v0, v15, v1}, Low0;->q(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    new-instance v2, Lp73;

    .line 84
    .line 85
    move-wide/from16 v3, v16

    .line 86
    .line 87
    invoke-direct/range {v2 .. v11}, Lp73;-><init>(JLjava/lang/String;Lga3;Lga3;JJ)V

    .line 88
    .line 89
    .line 90
    return-object v2
.end method
