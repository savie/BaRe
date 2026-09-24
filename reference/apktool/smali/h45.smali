.class public final Lh45;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lh45;

.field public static final d:Lh45;

.field public static final e:Lh45;

.field public static final f:Lh45;

.field public static final g:Lh45;

.field public static final h:Lh45;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lh45;

    .line 2
    .line 3
    const-string v1, "ml-dsa-44"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Lh45;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lh45;->c:Lh45;

    .line 10
    .line 11
    new-instance v0, Lh45;

    .line 12
    .line 13
    const-string v1, "ml-dsa-65"

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    invoke-direct {v0, v1, v3}, Lh45;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lh45;->d:Lh45;

    .line 20
    .line 21
    new-instance v0, Lh45;

    .line 22
    .line 23
    const-string v1, "ml-dsa-87"

    .line 24
    .line 25
    const/4 v4, 0x5

    .line 26
    invoke-direct {v0, v1, v4}, Lh45;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lh45;->e:Lh45;

    .line 30
    .line 31
    new-instance v0, Lh45;

    .line 32
    .line 33
    const-string v1, "ml-dsa-44-with-sha512"

    .line 34
    .line 35
    invoke-direct {v0, v1, v2}, Lh45;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lh45;->f:Lh45;

    .line 39
    .line 40
    new-instance v0, Lh45;

    .line 41
    .line 42
    const-string v1, "ml-dsa-65-with-sha512"

    .line 43
    .line 44
    invoke-direct {v0, v1, v3}, Lh45;-><init>(Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lh45;->g:Lh45;

    .line 48
    .line 49
    new-instance v0, Lh45;

    .line 50
    .line 51
    const-string v1, "ml-dsa-87-with-sha512"

    .line 52
    .line 53
    invoke-direct {v0, v1, v4}, Lh45;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lh45;->h:Lh45;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh45;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lh45;->a:I

    .line 7
    .line 8
    return-void
.end method
