.class public final Lud8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lli3;


# instance fields
.field public final a:Lox1;

.field public final b:Ljava/lang/Object;

.field public final c:Lhh4;


# direct methods
.method public constructor <init>(Lli3;Lox1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lud8;->a:Lox1;

    .line 5
    .line 6
    invoke-static {p2}, Lpe4;->E(Lox1;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lud8;->b:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance p2, Lhh4;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p2, p1, v0}, Lhh4;-><init>(Lli3;Ljv1;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lud8;->c:Lhh4;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljv1;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lud8;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lud8;->c:Lhh4;

    .line 4
    .line 5
    iget-object p0, p0, Lud8;->a:Lox1;

    .line 6
    .line 7
    invoke-static {p0, p1, v0, v1, p2}, Lji8;->O(Lox1;Ljava/lang/Object;Ljava/lang/Object;Lqt3;Ljv1;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    sget-object p1, Lyx1;->a:Lyx1;

    .line 12
    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object p0, Lbe8;->a:Lbe8;

    .line 17
    .line 18
    return-object p0
.end method
