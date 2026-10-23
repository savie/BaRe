.class public final synthetic Lgs3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lst3;


# instance fields
.field public final synthetic a:Lkm8;


# direct methods
.method public synthetic constructor <init>(Lkm8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgs3;->a:Lkm8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    check-cast p2, Landroid/database/sqlite/SQLiteCursorDriver;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/String;

    .line 6
    .line 7
    check-cast p4, Landroid/database/sqlite/SQLiteQuery;

    .line 8
    .line 9
    new-instance p1, Los3;

    .line 10
    .line 11
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1, p4}, Los3;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lgs3;->a:Lkm8;

    .line 18
    .line 19
    iget-object p0, p0, Lkm8;->a:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Lss7;

    .line 22
    .line 23
    iget-object v0, p0, Lss7;->d:[I

    .line 24
    .line 25
    array-length v0, v0

    .line 26
    const/4 v1, 0x1

    .line 27
    move v2, v1

    .line 28
    :goto_0
    if-ge v2, v0, :cond_5

    .line 29
    .line 30
    iget-object v3, p0, Lss7;->d:[I

    .line 31
    .line 32
    aget v3, v3, v2

    .line 33
    .line 34
    if-eq v3, v1, :cond_4

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    if-eq v3, v4, :cond_3

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    if-eq v3, v4, :cond_2

    .line 41
    .line 42
    const/4 v4, 0x4

    .line 43
    if-eq v3, v4, :cond_1

    .line 44
    .line 45
    const/4 v4, 0x5

    .line 46
    if-eq v3, v4, :cond_0

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    invoke-interface {p1, v2}, Los7;->f(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object v3, p0, Lss7;->n:[[B

    .line 54
    .line 55
    aget-object v3, v3, v2

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, v3, v2}, Los7;->N([BI)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    iget-object v3, p0, Lss7;->k:[Ljava/lang/String;

    .line 65
    .line 66
    aget-object v3, v3, v2

    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    invoke-interface {p1, v2, v3}, Los7;->p(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object v3, p0, Lss7;->f:[D

    .line 76
    .line 77
    aget-wide v4, v3, v2

    .line 78
    .line 79
    invoke-interface {p1, v2, v4, v5}, Los7;->s(ID)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    iget-object v3, p0, Lss7;->e:[J

    .line 84
    .line 85
    aget-wide v4, v3, v2

    .line 86
    .line 87
    invoke-interface {p1, v2, v4, v5}, Los7;->e(IJ)V

    .line 88
    .line 89
    .line 90
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    new-instance p0, Landroid/database/sqlite/SQLiteCursor;

    .line 94
    .line 95
    invoke-direct {p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 96
    .line 97
    .line 98
    return-object p0
.end method
