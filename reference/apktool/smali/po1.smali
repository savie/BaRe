.class public final synthetic Lpo1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lga6;


# instance fields
.field public final synthetic a:Lto1;

.field public final synthetic b:Lun1;


# direct methods
.method public synthetic constructor <init>(Lto1;Lun1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lpo1;->a:Lto1;

    .line 5
    .line 6
    iput-object p2, p0, Lpo1;->b:Lun1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lpo1;->b:Lun1;

    .line 2
    .line 3
    iget-object v1, v0, Lun1;->f:Lmo1;

    .line 4
    .line 5
    new-instance v2, Lpp0;

    .line 6
    .line 7
    iget-object p0, p0, Lpo1;->a:Lto1;

    .line 8
    .line 9
    invoke-direct {v2, v0, p0}, Lpp0;-><init>(Lun1;Ljo1;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v1, v2}, Lmo1;->m(Lpp0;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
