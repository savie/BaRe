.class public final synthetic Lxn7;
.super Ljj5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Lxn7;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lxn7;

    .line 2
    .line 3
    const-string v1, "isRemovable"

    .line 4
    .line 5
    const-string v2, "isRemovable()Z"

    .line 6
    .line 7
    const-class v3, Lzn7;

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Ljj5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lxn7;->c:Lxn7;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lzn7;

    .line 2
    .line 3
    iget-boolean p0, p1, Lzn7;->b:Z

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
