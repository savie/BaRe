.class public final enum Lvs7;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final enum b:Lvs7;

.field public static final enum c:Lvs7;

.field public static final enum d:Lvs7;

.field public static final enum e:Lvs7;

.field public static final synthetic f:[Lvs7;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lvs7;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0x7f070330

    .line 5
    .line 6
    .line 7
    const-string v3, "SURFACE_0"

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Lvs7;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lvs7;->b:Lvs7;

    .line 13
    .line 14
    new-instance v1, Lvs7;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const v3, 0x7f070331

    .line 18
    .line 19
    .line 20
    const-string v4, "SURFACE_1"

    .line 21
    .line 22
    invoke-direct {v1, v4, v2, v3}, Lvs7;-><init>(Ljava/lang/String;II)V

    .line 23
    .line 24
    .line 25
    sput-object v1, Lvs7;->c:Lvs7;

    .line 26
    .line 27
    new-instance v2, Lvs7;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    const v4, 0x7f070332

    .line 31
    .line 32
    .line 33
    const-string v5, "SURFACE_2"

    .line 34
    .line 35
    invoke-direct {v2, v5, v3, v4}, Lvs7;-><init>(Ljava/lang/String;II)V

    .line 36
    .line 37
    .line 38
    sput-object v2, Lvs7;->d:Lvs7;

    .line 39
    .line 40
    new-instance v3, Lvs7;

    .line 41
    .line 42
    const/4 v4, 0x3

    .line 43
    const v5, 0x7f070333

    .line 44
    .line 45
    .line 46
    const-string v6, "SURFACE_3"

    .line 47
    .line 48
    invoke-direct {v3, v6, v4, v5}, Lvs7;-><init>(Ljava/lang/String;II)V

    .line 49
    .line 50
    .line 51
    sput-object v3, Lvs7;->e:Lvs7;

    .line 52
    .line 53
    new-instance v4, Lvs7;

    .line 54
    .line 55
    const/4 v5, 0x4

    .line 56
    const v6, 0x7f070334

    .line 57
    .line 58
    .line 59
    const-string v7, "SURFACE_4"

    .line 60
    .line 61
    invoke-direct {v4, v7, v5, v6}, Lvs7;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    new-instance v5, Lvs7;

    .line 65
    .line 66
    const/4 v6, 0x5

    .line 67
    const v7, 0x7f070335

    .line 68
    .line 69
    .line 70
    const-string v8, "SURFACE_5"

    .line 71
    .line 72
    invoke-direct {v5, v8, v6, v7}, Lvs7;-><init>(Ljava/lang/String;II)V

    .line 73
    .line 74
    .line 75
    filled-new-array/range {v0 .. v5}, [Lvs7;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lvs7;->f:[Lvs7;

    .line 80
    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lvs7;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvs7;
    .locals 1

    .line 1
    const-class v0, Lvs7;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lvs7;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lvs7;
    .locals 1

    .line 1
    sget-object v0, Lvs7;->f:[Lvs7;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lvs7;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lvs7;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget p0, p0, Lvs7;->a:I

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-instance v0, Lxt2;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lxt2;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f040158

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Lz85;->n(Landroid/content/Context;I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    invoke-virtual {v0, p1, p0}, Lxt2;->a(IF)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method
