.class public final synthetic Lkp6;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lkp6;

    .line 2
    .line 3
    const-string v4, "getShell()Lcom/topjohnwu/superuser/Shell;"

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    const-class v2, Lcom/topjohnwu/superuser/Shell;

    .line 8
    .line 9
    const-string v3, "getShell"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lcu3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    sget p0, Lcom/topjohnwu/superuser/Shell;->UNKNOWN:I

    .line 2
    .line 3
    invoke-static {}, Lk55;->j()Lzd7;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
