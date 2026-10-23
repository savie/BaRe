.class public abstract Lg43;
.super Lh43;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public a:Ljava/util/regex/Pattern;


# virtual methods
.method public final a()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final b(Ll43;Ljava/util/Calendar;Ljava/lang/String;Ljava/text/ParsePosition;I)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lg43;->a:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    .line 4
    .line 5
    .line 6
    move-result p5

    .line 7
    invoke-virtual {p3, p5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {p1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    invoke-virtual {p4, p0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_0
    invoke-virtual {p4}, Ljava/text/ParsePosition;->getIndex()I

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    const/4 p5, 0x1

    .line 35
    invoke-virtual {p1, p5}, Ljava/util/regex/Matcher;->end(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/2addr v0, p3

    .line 40
    invoke-virtual {p4, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p2, p1}, Lg43;->c(Ljava/util/Calendar;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return p5
.end method

.method public abstract c(Ljava/util/Calendar;Ljava/lang/String;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " [pattern="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lg43;->a:Ljava/util/regex/Pattern;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, "]"

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method
