.class public final Lrw7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lp75;


# instance fields
.field public final synthetic a:Luw7;


# direct methods
.method public constructor <init>(Luw7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrw7;->a:Luw7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lbs2;Lon5;)V
    .locals 11

    .line 1
    check-cast p2, Llw7;

    .line 2
    .line 3
    invoke-virtual {p1}, Lbs2;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, p2}, Lbs2;->j(Lon5;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lrw7;->a:Luw7;

    .line 11
    .line 12
    iget-object v1, p0, Luw7;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Luw7;->b:Ljava/util/ArrayList;

    .line 23
    .line 24
    :cond_0
    iget-object v1, p0, Luw7;->b:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance v3, Lzw7;

    .line 27
    .line 28
    iget-object v4, p2, Llw7;->g:Lkw7;

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eq v4, v5, :cond_1

    .line 38
    .line 39
    if-eq v4, v2, :cond_3

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v2, v5

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 45
    :cond_3
    :goto_1
    iget-object p1, p1, Lbs2;->d:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lwj7;

    .line 48
    .line 49
    iget-object v4, p1, Lwj7;->a:Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    new-instance v6, Luj7;

    .line 56
    .line 57
    invoke-virtual {v4, v0, v5}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p1, Lwj7;->b:Ljava/util/ArrayDeque;

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_5

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    check-cast v7, Ltj7;

    .line 81
    .line 82
    if-eqz v7, :cond_5

    .line 83
    .line 84
    iget v8, v7, Ltj7;->b:I

    .line 85
    .line 86
    if-lt v8, v0, :cond_4

    .line 87
    .line 88
    iget v9, v7, Ltj7;->c:I

    .line 89
    .line 90
    if-gt v9, v5, :cond_4

    .line 91
    .line 92
    iget-object v7, v7, Ltj7;->a:Ljava/lang/Object;

    .line 93
    .line 94
    sub-int/2addr v8, v0

    .line 95
    sub-int/2addr v9, v0

    .line 96
    const/16 v10, 0x21

    .line 97
    .line 98
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    const-string p1, ""

    .line 106
    .line 107
    invoke-virtual {v4, v0, v5, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-direct {v3, v2, v6}, Lzw7;-><init>(ILuj7;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    iget-boolean p1, p2, Llw7;->f:Z

    .line 117
    .line 118
    iput-boolean p1, p0, Luw7;->c:Z

    .line 119
    .line 120
    return-void
.end method
