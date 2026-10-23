.class public Lgz4;
.super Ltl8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Lfz4;


# instance fields
.field public final b:Lyj7;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfz4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgz4;->d:Lfz4;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ltl8;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lyj7;

    .line 5
    .line 6
    invoke-direct {v0}, Lyj7;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lgz4;->b:Lyj7;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lgz4;->c:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 9

    .line 1
    iget-object p0, p0, Lgz4;->b:Lyj7;

    .line 2
    .line 3
    iget v0, p0, Lyj7;->c:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const/4 v3, 0x0

    .line 8
    if-ge v2, v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lyj7;->c(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    check-cast v4, Ldz4;

    .line 15
    .line 16
    iget-object v5, v4, Ldz4;->l:Ly29;

    .line 17
    .line 18
    invoke-virtual {v5}, Ly29;->a()V

    .line 19
    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    iput-boolean v6, v5, Ly29;->c:Z

    .line 23
    .line 24
    iget-object v7, v4, Ldz4;->n:Lez4;

    .line 25
    .line 26
    if-eqz v7, :cond_0

    .line 27
    .line 28
    invoke-virtual {v4, v7}, Ldz4;->j(Les5;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v8, v5, Ly29;->a:Ldz4;

    .line 32
    .line 33
    if-eqz v8, :cond_3

    .line 34
    .line 35
    if-ne v8, v4, :cond_2

    .line 36
    .line 37
    iput-object v3, v5, Ly29;->a:Ldz4;

    .line 38
    .line 39
    if-eqz v7, :cond_1

    .line 40
    .line 41
    iget-boolean v3, v7, Lez4;->b:Z

    .line 42
    .line 43
    :cond_1
    iput-boolean v6, v5, Ly29;->d:Z

    .line 44
    .line 45
    iput-boolean v1, v5, Ly29;->b:Z

    .line 46
    .line 47
    iput-boolean v1, v5, Ly29;->c:Z

    .line 48
    .line 49
    iput-boolean v1, v5, Ly29;->e:Z

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const-string p0, "Attempting to unregister the wrong listener"

    .line 55
    .line 56
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_3
    const-string p0, "No listener register"

    .line 61
    .line 62
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_4
    iget v0, p0, Lyj7;->c:I

    .line 67
    .line 68
    iget-object v2, p0, Lyj7;->b:[Ljava/lang/Object;

    .line 69
    .line 70
    move v4, v1

    .line 71
    :goto_1
    if-ge v4, v0, :cond_5

    .line 72
    .line 73
    aput-object v3, v2, v4

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    iput v1, p0, Lyj7;->c:I

    .line 79
    .line 80
    return-void
.end method
