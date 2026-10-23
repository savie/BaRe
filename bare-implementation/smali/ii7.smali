.class public final synthetic Lii7;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:Lr63;

.field public final synthetic b:Lwm2;

.field public final synthetic c:Lj87;

.field public final synthetic d:Lur1;


# direct methods
.method public synthetic constructor <init>(Lr63;Lwm2;Lj87;Lur1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lii7;->a:Lr63;

    .line 5
    .line 6
    iput-object p2, p0, Lii7;->b:Lwm2;

    .line 7
    .line 8
    iput-object p3, p0, Lii7;->c:Lj87;

    .line 9
    .line 10
    iput-object p4, p0, Lii7;->d:Lur1;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lii7;->b:Lwm2;

    .line 2
    .line 3
    iget-object v1, p0, Lii7;->c:Lj87;

    .line 4
    .line 5
    iget-object v2, p0, Lii7;->d:Lur1;

    .line 6
    .line 7
    iget-object p0, p0, Lii7;->a:Lr63;

    .line 8
    .line 9
    invoke-virtual {p0}, Lmm2;->g()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-virtual {v0}, Lvc7;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    :try_start_1
    invoke-virtual {v1}, Lj87;->m()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    .line 17
    .line 18
    :catch_1
    const/4 p0, 0x1

    .line 19
    :try_start_2
    invoke-virtual {v2, p0}, Lur1;->b(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 20
    .line 21
    .line 22
    :catch_2
    sget-object p0, Lbe8;->a:Lbe8;

    .line 23
    .line 24
    return-object p0
.end method
