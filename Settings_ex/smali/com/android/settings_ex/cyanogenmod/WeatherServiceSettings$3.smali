.class Lcom/android/settings_ex/cyanogenmod/WeatherServiceSettings$3;
.super Ljava/lang/Object;
.source "WeatherServiceSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/cyanogenmod/WeatherServiceSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/cyanogenmod/WeatherServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/cyanogenmod/WeatherServiceSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/cyanogenmod/WeatherServiceSettings;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/settings_ex/cyanogenmod/WeatherServiceSettings$3;->this$0:Lcom/android/settings_ex/cyanogenmod/WeatherServiceSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/cyanogenmod/WeatherServiceSettings$3;->this$0:Lcom/android/settings_ex/cyanogenmod/WeatherServiceSettings;

    invoke-static {v0}, Lcom/android/settings_ex/cyanogenmod/WeatherServiceSettings;->-wrap0(Lcom/android/settings_ex/cyanogenmod/WeatherServiceSettings;)V

    .line 450
    return-void
.end method
