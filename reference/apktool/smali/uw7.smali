.class public final Luw7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lex7;

.field public b:Ljava/util/ArrayList;

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Lex7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Luw7;->a:Lex7;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Luw7;Lbs2;Lz62;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lbs2;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lwj7;

    .line 4
    .line 5
    invoke-virtual {p1}, Lbs2;->g()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1, p2}, Lbs2;->j(Lon5;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Luw7;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz p1, :cond_5

    .line 15
    .line 16
    iget-object p1, v0, Lwj7;->a:Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    const/16 v2, 0xa

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x1

    .line 26
    if-lez p2, :cond_0

    .line 27
    .line 28
    sub-int/2addr p2, v4

    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eq v2, p1, :cond_0

    .line 34
    .line 35
    move p1, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move p1, v3

    .line 38
    :goto_0
    if-eqz p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lwj7;->a(C)V

    .line 41
    .line 42
    .line 43
    :cond_1
    const/16 p2, 0xa0

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Lwj7;->a(C)V

    .line 46
    .line 47
    .line 48
    new-instance p2, Lax7;

    .line 49
    .line 50
    iget-object v2, p0, Luw7;->a:Lex7;

    .line 51
    .line 52
    iget-object v5, p0, Luw7;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    iget-boolean v6, p0, Luw7;->c:Z

    .line 55
    .line 56
    iget v7, p0, Luw7;->d:I

    .line 57
    .line 58
    rem-int/lit8 v7, v7, 0x2

    .line 59
    .line 60
    if-ne v7, v4, :cond_2

    .line 61
    .line 62
    move v7, v4

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move v7, v3

    .line 65
    :goto_1
    invoke-direct {p2, v2, v5, v6, v7}, Lax7;-><init>(Lex7;Ljava/util/ArrayList;ZZ)V

    .line 66
    .line 67
    .line 68
    iget-boolean v2, p0, Luw7;->c:Z

    .line 69
    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget v2, p0, Luw7;->d:I

    .line 74
    .line 75
    add-int/lit8 v3, v2, 0x1

    .line 76
    .line 77
    :goto_2
    iput v3, p0, Luw7;->d:I

    .line 78
    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    :cond_4
    iget-object p1, v0, Lwj7;->a:Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-static {v0, p2, v1, p1}, Lwj7;->c(Lwj7;Ljava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Luw7;->b:Ljava/util/ArrayList;

    .line 94
    .line 95
    :cond_5
    return-void
.end method
