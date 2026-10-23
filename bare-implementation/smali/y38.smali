.class public final Ly38;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final synthetic a:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly38;->a:Lcom/google/android/material/timepicker/TimePickerView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Ly38;->a:Lcom/google/android/material/timepicker/TimePickerView;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->P:Lj95;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lj95;->c0:I

    .line 9
    .line 10
    iget-object v0, p0, Lj95;->Z:Lcom/google/android/material/button/MaterialButton;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lj95;->l(Lcom/google/android/material/button/MaterialButton;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lj95;->P:Lv38;

    .line 16
    .line 17
    invoke-virtual {p0}, Lv38;->g()V

    .line 18
    .line 19
    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    return p0
.end method
