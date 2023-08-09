# MATLAB and Simulink Communication Systems Experiments

## Overview

This repository contains MATLAB programs and Simulink models developed for academic experiments involving digital communication, signal modulation, wireless communication systems, and basic encryption techniques.

## Tools Used

- MATLAB
- Simulink
- Communications-related Simulink blocks and visualization tools

## Experiments

### 1. Line Coding

This MATLAB program accepts a sequence of binary input bits and generates a corresponding waveform using sample-based signal construction. The script uses 100 samples per bit and plots the resulting signal against the sample index. 

**Concepts:** Digital representation of binary data, line coding, waveform generation, and signal visualization.

### 2. Amplitude Modulation and Signal Analysis

This script generates a sinusoidal message signal and a sinusoidal carrier using user-defined amplitudes and frequencies. It then constructs an amplitude-modulated signal and plots the message, carrier, modulated waveform, and a frequency-domain representation obtained using the Fast Fourier Transform (FFT). The script also calculates the product of the message and carrier signals for additional signal analysis.

**Concepts:** Sinusoidal signals, amplitude modulation, carrier signals, FFT, and time-domain signal visualization.

### 3. Morse Code Encoding and Decoding

These scripts implement Morse code encoding and decoding operations. 

**Concepts:** Symbol encoding, decoding, and representation of textual information.

### 4. Monoalphabetic Shift Cipher

This MATLAB program implements a shift-cipher exercise. It accepts a text message and a numeric key, converts characters into numeric character codes, applies modular arithmetic to generate an encrypted message, and attempts to recover the original message.

**Concepts:** Basic cryptography, character encoding, modular arithmetic, encryption, and decryption.

### 5. Wireless Communication Simulation — QPSK

The Simulink model contains a binary data source, QPSK modulation, SISO fading channel blocks, and constellation visualization. The model explores QPSK signal transmission and the effect of fading channels on the received signal.

**Concepts:** Digital modulation, QPSK, wireless fading channels, and constellation diagrams.

### 6. Wireless Communication Simulation — QAM and Equalization

The model contains a rectangular QAM modulator, an AWGN channel, a discrete FIR filter, a linear equalizer, and constellation visualization. The block configuration suggests an experiment involving QAM transmission in a noisy channel and the use of equalization to process the received signal.

**Concepts:** QAM, additive white Gaussian noise (AWGN), digital filtering, linear equalization, and constellation diagrams.

### 7. Wireless Communication Simulation — BPSK and OFDM

The model contains BPSK modulation and demodulation blocks, OFDM modulation and demodulation blocks, an AWGN channel, spectrum analysis, and time-domain and constellation visualization components. The model explores digital modulation and OFDM signal behavior. 

**Concepts:** BPSK, orthogonal frequency-division multiplexing (OFDM), AWGN, spectrum analysis, and signal visualization.

## Notes

- Some models may depend on particular MATLAB releases or Communications Toolbox blocks.

