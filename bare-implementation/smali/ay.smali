.class public final synthetic Lay;
.super Ljj5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Lay;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lay;

    .line 2
    .line 3
    const-string v1, "dateInstalled"

    .line 4
    .line 5
    const-string v2, "getDateInstalled()Ljava/lang/Long;"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Ljj5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lay;->c:Lay;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lji;

    .line 2
    .line 3
    invoke-virtual {p1}, Lji;->getDateInstalled()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
