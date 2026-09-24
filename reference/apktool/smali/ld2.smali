.class public final Lld2;
.super Lol1;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final e:Ll15;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lld2;

    .line 2
    .line 3
    invoke-static {v0}, Lo15;->b(Ljava/lang/Class;)Ll15;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lld2;->e:Ll15;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final c(Lev6;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final k(Lev6;)V
    .locals 1

    .line 1
    sget-object p0, Lld2;->e:Ll15;

    .line 2
    .line 3
    const-string v0, "Packet << {} >> ended up in dead letters"

    .line 4
    .line 5
    invoke-interface {p0, p1, v0}, Ll15;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
