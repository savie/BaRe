.class public final Lbh5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljo4;

.field public final b:Ljava/util/List;

.field public final c:Lra2;


# direct methods
.method public constructor <init>(Ljo4;Lra2;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Argument must not be null"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lbh5;->a:Ljo4;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lbh5;->b:Ljava/util/List;

    .line 17
    .line 18
    invoke-static {p2, v1}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lbh5;->c:Lra2;

    .line 22
    .line 23
    return-void
.end method
