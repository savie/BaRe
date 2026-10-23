.class public final Lc83;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lr73;


# virtual methods
.method public final a()I
    .locals 0

    .line 1
    const/16 p0, 0x26

    .line 2
    .line 3
    return p0
.end method

.method public final c(Low0;)Lt73;
    .locals 5

    .line 1
    iget-object p0, p1, Low0;->b:Lvw2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object p0, p1, Low0;->b:Lvw2;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lms8;->H(Low0;)Lga3;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lvw2;->f(Low0;)J

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lvw2;->f(Low0;)J

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {p0, p1}, Lvw2;->e(Low0;)J

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x4

    .line 41
    invoke-virtual {p1, v4}, Low0;->t(I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lvw2;->a(Low0;)J

    .line 45
    .line 46
    .line 47
    sget-object p0, Lh51;->c:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    long-to-int v2, v2

    .line 50
    div-int/lit8 v2, v2, 0x2

    .line 51
    .line 52
    invoke-virtual {p1, p0, v2}, Low0;->q(Ljava/nio/charset/Charset;I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-instance p1, Lq73;

    .line 57
    .line 58
    invoke-direct {p1, v0, v1, p0}, Li73;-><init>(JLjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object p1
.end method
