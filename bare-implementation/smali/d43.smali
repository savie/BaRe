.class public final Ld43;
.super Lh43;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld43;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final b(Ll43;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    move p2, p1

    .line 3
    :goto_0
    iget-object p5, p0, Ld43;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p2, v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    add-int/2addr v0, p2

    .line 16
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 23
    .line 24
    .line 25
    return p1

    .line 26
    :cond_0
    invoke-virtual {p5, p2}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result p5

    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eq p5, v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 37
    .line 38
    .line 39
    return p1

    .line 40
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    add-int/2addr p1, p0

    .line 52
    invoke-virtual {p4, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 53
    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CopyQuotedStrategy [formatField="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Ld43;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "]"

    .line 11
    .line 12
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
