.class public final synthetic Lyc1;
.super Lv9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# static fields
.field public static final n:Lyc1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lyc1;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    sget-object v2, Luz0;->NO_RECEIVER:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const-class v3, Lkh0;

    .line 8
    .line 9
    const-string v4, "<init>"

    .line 10
    .line 11
    const-string v5, "<init>(Lkotlin/jvm/functions/Function0;)V"

    .line 12
    .line 13
    invoke-direct/range {v0 .. v6}, Lv9;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lyc1;->n:Lyc1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lkh0;

    .line 2
    .line 3
    invoke-direct {p0}, Lkh0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
