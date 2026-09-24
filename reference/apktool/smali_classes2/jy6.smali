.class public final synthetic Ljy6;
.super Ljj5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final c:Ljy6;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljy6;

    .line 2
    .line 3
    const-string v1, "regularFileCount"

    .line 4
    .line 5
    const-string v2, "getRegularFileCount()Ljava/lang/Long;"

    .line 6
    .line 7
    const-class v3, Lxy6;

    .line 8
    .line 9
    invoke-direct {v0, v3, v1, v2}, Ljj5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Ljy6;->c:Ljy6;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxy6;

    .line 2
    .line 3
    iget-object p0, p1, Lxy6;->l:Ljava/lang/Long;

    .line 4
    .line 5
    return-object p0
.end method
