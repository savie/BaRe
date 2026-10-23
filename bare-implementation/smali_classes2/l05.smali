.class public final synthetic Ll05;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# static fields
.field public static final a:Ll05;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ll05;

    .line 2
    .line 3
    const-string v4, "getValue()Ljava/lang/Object;"

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const-class v2, Leb2;

    .line 8
    .line 9
    const-string v3, "getValue"

    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lcu3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ll05;->a:Ll05;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Leb2;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p1, Leb2;->a:Lsb4;

    .line 7
    .line 8
    iget-object p0, p0, Lsb4;->a:Lqn5;

    .line 9
    .line 10
    invoke-interface {p0}, Lqn5;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method
