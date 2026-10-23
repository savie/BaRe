.class public final synthetic Llb1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/text/InputFilter;


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    move p4, p2

    .line 7
    :goto_0
    if-ge p4, p3, :cond_2

    .line 8
    .line 9
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result p5

    .line 13
    invoke-static {p5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    .line 14
    .line 15
    .line 16
    move-result p6

    .line 17
    if-nez p6, :cond_0

    .line 18
    .line 19
    invoke-static {p5}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 20
    .line 21
    .line 22
    move-result p6

    .line 23
    if-nez p6, :cond_0

    .line 24
    .line 25
    const/16 p6, 0x2d

    .line 26
    .line 27
    if-ne p5, p6, :cond_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    :cond_1
    add-int/lit8 p4, p4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    sub-int/2addr p3, p2

    .line 40
    if-ne p1, p3, :cond_3

    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0

    .line 44
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string p1, " "

    .line 49
    .line 50
    const-string p2, "\n"

    .line 51
    .line 52
    filled-new-array {p1, p2}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 p2, 0x6

    .line 57
    invoke-static {p0, p1, p2}, Lnq7;->x0(Ljava/lang/CharSequence;[Ljava/lang/String;I)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v4, 0x0

    .line 62
    const/16 v5, 0x3e

    .line 63
    .line 64
    const-string v1, " "

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static/range {v0 .. v5}, Lel1;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmt3;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Lnq7;->H0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0
.end method
