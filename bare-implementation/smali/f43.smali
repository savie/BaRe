.class public Lf43;
.super Lh43;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lf43;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final b(Ll43;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .locals 2

    .line 1
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez p5, :cond_2

    .line 10
    .line 11
    :goto_0
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    invoke-static {p5}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 18
    .line 19
    .line 20
    move-result p5

    .line 21
    if-nez p5, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    add-int/2addr p5, v0

    .line 32
    if-le v1, p5, :cond_3

    .line 33
    .line 34
    move v1, p5

    .line 35
    :cond_3
    :goto_2
    if-ge v0, v1, :cond_5

    .line 36
    .line 37
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result p5

    .line 41
    invoke-static {p5}, Ljava/lang/Character;->isDigit(C)Z

    .line 42
    .line 43
    .line 44
    move-result p5

    .line 45
    if-nez p5, :cond_4

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_5
    :goto_3
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    .line 52
    .line 53
    .line 54
    move-result p5

    .line 55
    if-ne p5, v0, :cond_6

    .line 56
    .line 57
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x0

    .line 61
    return p0

    .line 62
    :cond_6
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    .line 63
    .line 64
    .line 65
    move-result p5

    .line 66
    invoke-virtual {p3, p5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 75
    .line 76
    .line 77
    iget p4, p0, Lf43;->a:I

    .line 78
    .line 79
    invoke-virtual {p0, p1, p3}, Lf43;->c(Ll43;I)I

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    invoke-virtual {p2, p4, p0}, Ljava/util/Calendar;->set(II)V

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x1

    .line 87
    return p0
.end method

.method public c(Ll43;I)I
    .locals 0

    .line 1
    return p2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "NumberStrategy [field="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p0, p0, Lf43;->a:I

    .line 9
    .line 10
    const-string v1, "]"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Lxs1;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
