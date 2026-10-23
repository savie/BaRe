.class public final enum Lpr5$b;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpr5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation


# static fields
.field public static final enum a:Lpr5$b;

.field public static final enum b:Lpr5$b;

.field public static final synthetic c:[Lpr5$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lpr5$b;

    .line 2
    .line 3
    const-string v1, "DAYS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lpr5$b;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lpr5$b;->a:Lpr5$b;

    .line 10
    .line 11
    new-instance v1, Lpr5$b;

    .line 12
    .line 13
    const-string v2, "YEARS"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lpr5$b;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lpr5$b;->b:Lpr5$b;

    .line 20
    .line 21
    filled-new-array {v0, v1}, [Lpr5$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lpr5$b;->c:[Lpr5$b;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpr5$b;
    .locals 1

    .line 1
    const-class v0, Lpr5$b;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lpr5$b;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lpr5$b;
    .locals 1

    .line 1
    sget-object v0, Lpr5$b;->c:[Lpr5$b;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lpr5$b;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lpr5$b;

    .line 8
    .line 9
    return-object v0
.end method
